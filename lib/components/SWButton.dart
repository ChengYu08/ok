import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ok/config/SWColors.dart';
import 'package:ok/config/SWFonts.dart';

enum ButtonType {
  // 渐变色 字体黑色
  primary,
  // 透明色 字体白色
  secondary,
  // 灰色 字体白色
  dark,
}

class SWButton extends StatefulWidget {
  const SWButton({
    super.key,
    required this.text,
    this.width = 0.0,
    this.height = 0.0,
    this.press,
    this.type = ButtonType.primary,
  });
  final String text;
  final double width;
  final double height;
  final Function? press;

  final ButtonType type;

  @override
  State<SWButton> createState() => _SWButtonState();
}

class _SWButtonState extends State<SWButton> {
  @override
  Widget build(BuildContext context) {
    Color? color = SWColors.colorBtnBlack;
    if (widget.type == ButtonType.dark) {
      color = SWColors.colorBtnBlack;
    }
    switch (widget.type) {
      case ButtonType.primary:
        color = null;
        break;
      case ButtonType.secondary:
        color = SWColors.colorBtnBlack.withOpacity(0.5);
        break;
      case ButtonType.dark:
        color = SWColors.colorBtnBlack;
        break;
    }
    return InkWell(
      onTap: () {
        widget.press?.call();
      },
      child: Container(
        width: widget.width > 0 ? widget.width : 343.w,
        height: widget.height > 0 ? widget.height : 66.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.r),
          border: widget.type == ButtonType.secondary
              ? Border.all(color: Colors.white)
              : null,
          gradient: widget.type == ButtonType.primary
              ? const LinearGradient(
                  colors: [
                    Color(0xff5effbc), // #5EFFBC 转换为Color对象
                    Color(0xff02e6ff), // #02E6FF 转换为Color对象
                  ],
                  stops: [0.11, 0.43], // 分别对应-11%和43%
                )
              : null,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(40, 35, 61, 0.3), // 将RGBA颜色转换为Color对象
              blurRadius: 30, // 阴影模糊半径
              spreadRadius: 0, // 阴影扩散半径
              offset: Offset(0, 0), // 阴影偏移
            ),
          ],
        ),
        child: Text(
          widget.text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: widget.type == ButtonType.primary
                ? SWColors.textColorBlack
                : Colors.white,
            fontSize: 14.sp,
            fontFamily: MSFonts.fontMedium,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
