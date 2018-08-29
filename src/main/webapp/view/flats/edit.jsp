<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>XX系统 - 房屋信息更新</title>
	<link rel="stylesheet" href="../../../ststic/css/main.css">
	<link rel="stylesheet" href="../../../static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>添加房屋信息</h3>
	<form action="" method="post">
		<table class="form-table">
			<tr>
				<td>地区</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="填写地区" value="经开区">
				</td>
			</tr>
			<tr>
				<td>小区名字</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="小区名字" value="美景鸿城">
				</td>
			</tr>
			<tr>
				<td>单元号</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="单元号" value="二单元">
				</td>
			</tr>
			<tr>
				<td>楼层</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="楼层" value="10">
				</td>
			</tr>
			<tr>
				<td>房间号</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="房间号" value="1002">
				</td>
			</tr>
			<tr>
				<td>面积（平米）</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="面积" value="120">
				</td>
			</tr>
			<tr>
				<td>朝向</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="朝向" value="南北">
				</td>
			</tr>
			<tr>
				<td>装修</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="装修" value="精装修">
				</td>
			</tr>
			<tr>
				<td>是否双气</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="是否双气" value="天然气">
				</td>
			</tr>
			<tr>
				<td>限住人数</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="限住人数" value="3">
				</td>
			</tr>
			<tr>
				<td>配套设施</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="配套设施" value="全套家电，洗衣机，空调">
				</td>
			</tr>
			<tr>
				<td>出租价格（元/月）</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="出租价格" value="2000">
				</td>
			</tr>
			<tr>
				<td>出租状态</td>
				<td colspan="3" class="control">
					<select>
						<option>出租状态</option>
						<option selected>已出租</option>
						<option>未出租</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>房屋图片</td>
				<td colspan="3" class="control">
					<p><img src="../../../image/image.png" width="300px" height="200px"></p>
					<input type="file" name="">
				</td>
			</tr>
			<tr>
				<td>完整地址信息</td>
				<td colspan="3" class="control">
					<input type="text" name="" placeholder="完整地址信息" value="郑州市经济开发区xxx路xx号xx小区xx号楼xx单元xx层xx室">
				</td>
			</tr>

			<tr>
				<td>备注说明</td>
				<td colspan="3" class="control">
					<textarea class="p100" name="" placeholder="备注说明信息">房屋备注说明信息</textarea>
				</td>
			</tr>
		</table>
		<div class="buttons">
			<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
			<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
		</div>
	</form>
</div>
</body>
</html>