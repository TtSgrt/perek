
<?php
  defined('BASEPATH') OR exit('No direct script access allowed');
    ?>
    <!DOCTYPE html>
    <html lang='en'>

    <head>
        <meta charset='utf-8' />
        <title>
            <?php
            echo $title; ?>
        </title>
        <?php
         foreach($css_files as $file): ?>
            <link type='text/css' rel='stylesheet' href='<?php
         echo $file; ?>' />
            <?php
         endforeach; ?>
                <?php
         foreach($js_files as $file): ?>
                    <script src='<?php
         echo $file; ?>'></script>
                    <?php
         endforeach; ?>
    </head>

    <body>
        <div class='head'>
            <a href='<?php
            echo site_url(); ?>/perek'><img src='<?php
            echo base_url(); ?>assets/perek/images/logo.png' width='70' height='70' /></a>
            <span style='position:absolute'>
            <h1><?php echo $title; ?></h1>
         </span>
        </div>
        <div style='height:70px;'></div>
        <div>
            <?php
         echo $output; ?>
        </div>
    </body>

    </html>
