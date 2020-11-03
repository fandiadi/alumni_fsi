        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url(''); ?>">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-file-signature"></i>
                </div>
                <div class="sidebar-brand-text mx-3">KIOSK ADM</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- QUERY MENU -->
            <?php
            $role_id = $this->session->userdata('role_id');
            $queryMenu = "SELECT `tb_menu`.`id`, `menu`
                            FROM `tb_menu` JOIN `tb_user_access_menu`
                                ON `tb_menu`.`id` = `tb_user_access_menu`.`menu_id`
                            WHERE `tb_user_access_menu`.`role_id` = $role_id
                        ORDER BY `tb_user_access_menu`.`menu_id` ASC
                        ";
            $menu = $this->db->query($queryMenu)->result_array();
            ?>

            <!-- LOOPING MENU -->
            <?php foreach ($menu as $m) : ?>
                <div class="sidebar-heading">
                    <?= $m['menu']; ?>
                </div>

                <!-- Menyiapkan Sub-Menu Sesuai Menu -->
                <?php
                $menuId = $m['id'];
                $querySubMenu = "SELECT *
                                    FROM `tb_sub_menu` JOIN `tb_menu` 
                                        ON `tb_sub_menu`.`id_menu` = `tb_menu`.`id`
                                    WHERE `tb_sub_menu`.`id_menu` = $menuId
                                        AND `tb_sub_menu`.`is_active` = 1
               ";
                $subMenu = $this->db->query($querySubMenu)->result_array();
                ?>

                <?php foreach ($subMenu as $sm) : ?>
                    <?php if ($title == $sm['title']) : ?>
                        <li class="nav-item active">
                        <?php else : ?>
                        <li class="nav-item">
                        <?php endif; ?>
                        <a class="nav-link" href="<?= base_url($sm['url']); ?>">
                            <i class="<?= $sm['icon']; ?>"></i>
                            <span><?= $sm['title']; ?></span></a>
                        </li>
                    <?php endforeach; ?>

                    <hr class="sidebar-divider">
                <?php endforeach; ?>


                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

        </ul>
        <!-- End of Sidebar -->