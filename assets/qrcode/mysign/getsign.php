<?php
include('lib.php');
if (isset($_GET['i'])) {
    $id = $_GET['i'];
    $sign = getSignature($id);
    if ($sign == NULL) {
        $text = "";
    } else {
        $text = "Saya $sign[2] dengan NID $sign[1] menyatakan bahwa $sign[3]";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MySign</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        .container-qr {
            width: 100px;
            margin: auto;
        }

        #qrcode {
            width: 100px;
            height: 100px;
            /* margin-top: 15px; */
            margin-left: -100px;
        }

        .nav {
            margin-top: 180px;
        }
        #share{
            margin-top: 180px;
        }
    </style>
    <script src="js/qrcode.js"></script>
</head>

<body>
    <section class="col-lg-6 mx-auto">
        <div class="h4"><?php echo $text; ?></div>
        <div class="container-qr">
            <div id="qrcode"></div>
            <div><input id="share" type="button" value="Share" class="btn btn-success" /></div>
            <script>
                var qrcode = new QRCode("qrcode");
                var elText = "http://if.unjani.ac.id/sign/getsign.php?i=<?php echo $id ?>";
                qrcode.makeCode(elText);
            </script>
        </div>
        <div class="nav">
            <!-- <a href="#" class="btn btn-primary form-control" id="btn-download" download="mysign.png">Save</a> -->
        </div>
        <script>
            var button = document.getElementById('btn-download');
            button.addEventListener('click', function(e) {
                var dataURL = document.getElementsByTagName('img')[0].src;
                // document.write(dataURL);
                button.href = dataURL;
            });
        </script>
        <script>
            'use strict';

            function sleep(delay) {
                return new Promise(resolve => {
                    setTimeout(resolve, delay);
                });
            }

            function logText(message, isError) {
                if (isError)
                    console.error(message);
                else
                    console.log(message);

                const p = document.createElement('p');
                if (isError)
                    p.setAttribute('class', 'error');
                document.querySelector('#output').appendChild(p);
                p.appendChild(document.createTextNode(message));
            }

            function logError(message) {
                logText(message, true);
            }

            function checkboxChanged(e) {
                const checkbox = e.target;
                const textfield = document.querySelector('#' + checkbox.id.split('_')[0]);

                textfield.disabled = !checkbox.checked;
                if (!checkbox.checked)
                    textfield.value = '';
            }

            async function testWebShare() {
                if (navigator.share === undefined) {
                    logError('Error: Unsupported feature: navigator.share()');
                    return;
                }

                const title_input = document.querySelector('#title');
                const text_input = document.querySelector('#text');
                const url_input = document.querySelector('#url');
                const file_input = document.querySelector('#files');

                const title = title_input.disabled ? undefined : title_input.value;
                const text = text_input.disabled ? undefined : text_input.value;
                const url = url_input.disabled ? undefined : url_input.value;
                const files = file_input.disabled ? undefined : file_input.files;

                if (files && files.length > 0) {
                    if (!navigator.canShare || !navigator.canShare({
                            files
                        })) {
                        logError('Error: Unsupported feature: navigator.canShare()');
                        return;
                    }
                }

                try {
                    await navigator.share({
                        files,
                        title,
                        text,
                        url
                    });
                    logText('Successfully sent share');
                } catch (error) {
                    logError('Error sharing: ' + error);
                }
            }

            async function testWebShareDelay() {
                await sleep(6000);
                testWebShare();
            }

            function onLoad() {
                // Checkboxes disable and delete textfields.
                document.querySelector('#title_checkbox').addEventListener('click',
                    checkboxChanged);
                document.querySelector('#text_checkbox').addEventListener('click',
                    checkboxChanged);
                document.querySelector('#url_checkbox').addEventListener('click',
                    checkboxChanged);

                document.querySelector('#share').addEventListener('click', testWebShare);
                document.querySelector('#share-no-gesture').addEventListener('click',
                    testWebShareDelay);

                if (navigator.share === undefined) {
                    if (window.location.protocol === 'http:') {
                        // navigator.share() is only available in secure contexts.
                        window.location.replace(window.location.href.replace(/^http:/, 'https:'));
                    } else {
                        logError('Error: You need to use a browser that supports this draft ' +
                            'proposal.');
                    }
                }
            }

            window.addEventListener('load', onLoad);
        </script>
    </section>
</body>

</html>