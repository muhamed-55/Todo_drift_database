import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; 
class AppSVGAssets {
static const mobile = "assets/svg_icons/mobile.svg";
static const calendar = "assets/svg_icons/calendar.svg";
static const profileTwoUser = "assets/svg_icons/profile_two_user.svg";
static const meds = "assets/svg_icons/meds.svg";
static const card = "assets/svg_icons/card.svg";
static const plusWithCircleContainer = "assets/svg_icons/plus_with_circle_container.svg";
static const close = "assets/svg_icons/close.svg";
static const logOut = "assets/svg_icons/log_out.svg";
static const greenContainer = "assets/svg_icons/green_container.svg";
static const medications = "assets/svg_icons/medications.svg";
static const location = "assets/svg_icons/location.svg";
static const address = "assets/svg_icons/address.svg";
static const arrow = "assets/svg_icons/arrow.svg";
static const vuesax = "assets/svg_icons/vuesax.svg";
static const campus = "assets/svg_icons/campus.svg";
static const cart = "assets/svg_icons/cart.svg";
static const category = "assets/svg_icons/category.svg";
static const bagActive = "assets/svg_icons/bag_active.svg";
static const filterSquare = "assets/svg_icons/filter_square.svg";
static const pinkRight = "assets/svg_icons/pink_right.svg";
static const congrats = "assets/svg_icons/congrats.svg";
static const apple = "assets/svg_icons/apple.svg";
static const notification = "assets/svg_icons/notification.svg";
static const cliamsFilled = "assets/svg_icons/cliams_filled.svg";
static const loginOrReg = "assets/svg_icons/login_or_reg.svg";
static const candle2 = "assets/svg_icons/candle_2.svg";
static const cakeBlack = "assets/svg_icons/cake_black.svg";
static const bag = "assets/svg_icons/bag.svg";
static const homeActive = "assets/svg_icons/home_active.svg";
static const userOctagon = "assets/svg_icons/user_octagon.svg";
static const eye = "assets/svg_icons/eye.svg";
static const magicStarActive = "assets/svg_icons/magic_star_active.svg";
static const lapTest = "assets/svg_icons/lap_test.svg";
static const magicStar = "assets/svg_icons/magic_star.svg";
static const cake = "assets/svg_icons/cake.svg";
static const setting4 = "assets/svg_icons/setting_4.svg";
static const frensh = "assets/svg_icons/frensh.svg";
static const pass = "assets/svg_icons/pass.svg";
static const passwordCheck = "assets/svg_icons/password_check.svg";
static const claims = "assets/svg_icons/claims.svg";
static const location2 = "assets/svg_icons/location2.svg";
static const check = "assets/svg_icons/check.svg";
static const bagTick = "assets/svg_icons/bag_tick.svg";
static const securitySafe = "assets/svg_icons/security.svg";
static const darkMode = "assets/svg_icons/dark_mode.svg";
static const trash = "assets/svg_icons/trash.svg";
static const calendar2 = "assets/svg_icons/calendar2.svg";
static const star1 = "assets/svg_icons/star1.svg";
static const user = "assets/svg_icons/user.svg";
static const lock = "assets/svg_icons/lock.svg";
static const email = "assets/svg_icons/email.svg";
static const pin1 = "assets/svg_icons/pin1.svg";
static const search = "assets/svg_icons/search.svg";
static const home = "assets/svg_icons/home.svg";
static const plusContainer = "assets/svg_icons/plus_container.svg";
static const share = "assets/svg_icons/share.svg";
static const emptyCart = "assets/svg_icons/empty_cart.svg";
static const success = "assets/svg_icons/success.svg";
static const eyeSlash = "assets/svg_icons/eye_slash.svg";
static const profile2user = "assets/svg_icons/profile_2user.svg";
static const setting = "assets/svg_icons/setting.svg";
static const help = "assets/svg_icons/help.svg";
static const more= "assets/svg_icons/more_icon.svg";
static const logoArabic = "assets/svg_icons/LogoArabic.svg";
static const logo= "assets/svg_icons/Logo.svg";

     static SvgPicture getWidget(String assetName,{ BoxFit fit = BoxFit.none, Color? color,
      double? width, double? height}) {
    if (width != null && height != null) {
      return SvgPicture.asset(
        assetName,
        fit: fit,
        color: color,
        width: width,
        height: height,
      );
    }
    return SvgPicture.asset(
      assetName,
      fit: fit,
      color: color
    );
  }
    }