<div class="row">
    <ol class="breadcrumb">
        <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
        <li class="active">Danh số</li>
    </ol>
</div><!--/.row-->

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-info">
            <div class="panel-heading">
            <div class="col-md-8">Thống kê danh số</div>

            </div>
                <!--bieu do-->
                <div class="row">
                    <div class="col-xs-12 col-md-6 col-lg-3">
                        <div class="panel panel-warning panel-widget">
                            <div class="row no-padding">
                                <div class="col-sm-3 col-lg-5 widget-left">
                                    <svg class="glyph-svg stroked"><use xlink:href="#stroked-app-window"></use></svg>
                                </div>
                                <div class="col-sm-9 col-lg-7 widget-right">
                                    <div class="large">
                                            45678000
                                    </div>
                                    <div class="text-muted">Đồng</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-6 col-lg-3">
                        <div class="panel panel-warning panel-widget">
                            <div class="row no-padding">
                                <div class="col-sm-3 col-lg-5 widget-left">
                                    <svg class="glyph stroked male-user"><use xlink:href="#stroked-dashboard-dial"></use></svg>
                                </div>
                                <div class="col-sm-9 col-lg-7 widget-right">
                                    <div class="large">
                                        <?php echo $total; ?>
                                    </div>
                                    <div class="text-muted">Lượt khách</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <!--bieu do-->
            <div class="panel-body">
                 <div class="breadcrumbs-fixed col-md-offset-2 panel-action padding-left-10">
                    <h5 style="float: left;">
                        <label style="color: #307ecc; padding-left: 10px;">
                            <input type="radio" name="revenue" value="1" checked>
                            <span class="lbl">Báo cáo tổng hợp</span>
                        </label>
                        <label style="color: #307ecc;">
                            
                            <span class="lbl"> </span>
                        </label>
                        <label style="color: #307ecc;">
                            
                            <span class="lbl"> </span>
                        </label>
                    </h5>
                    <div class="col-md-4 padd-0" style="padding-left: 5px;">
                        <div class="input-group date" >
                                <input id="datepicker" data-date-format="dd-mm-yyyy" class="form-control" type="text">
                                <span class="input-group-addon">Đến</span>
                                <input id="datepicker2" data-date-format="dd-mm-yyyy" class="form-control" type="text"/>
                        </div>
                        
                    </div>
                    <div class="breadcrumbs-fixed col-md-offset-2 panel-action padding-left-10">
                            <p class="btn btn-success">Thống kê</p>
                    </div>
                </div>
                
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr class="info">                                       
                                <th class="text-center">STT</th>
                                <th>Tên khách hàng</th>
                                <th>Ngày đặt</th>
                                <th>Số ĐT</th>
                                <th>Giá tiền</th>
                                <th>Trạng thái</th>     
                                
                            </tr>
                        </thead>
                        <tbody>

                            <?php 
                                $stt = 0;
                            foreach ($transaction as $value) { 
                                $stt = $stt + 1;
                                ?>
                                <tr>
                                    <td style="vertical-align: middle;text-align: center;"><strong><?php echo $stt; ?></strong></td>
                                    <td><strong><?php echo $value->user_name; ?></strong></td>
                                    <td><strong><?php echo mdate('%d/%m/%Y',$value->created); ?></strong></td>
                                    <td><strong><?php echo $value->user_phone; ?></strong></td>
                                    <td><strong><?php echo number_format($value->amount); ?></strong> VNĐ</td>
                                    <td>
                                        <?php switch ($value->status) {
                                            case '0':
                                                echo "<p style='color:red'>Đang chờ </p>";
                                                break;
                                            case '1':
                                                echo "<p style='color:green'>Đã xác nhận</p>";
                                                break;
                                            default:
                                                echo 'Đang chờ';
                                                break;
                                        } ?>
                                    </td>    
                                </tr>
                            <?php } ?>

                        </tbody>

                    </table>

                       <?php echo $this->pagination->create_links(); ?>
                    
                    
                </div>
            </div>
        </div>
    </div>
</div><!--/.row-->
