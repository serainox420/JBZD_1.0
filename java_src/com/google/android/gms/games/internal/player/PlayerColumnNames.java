package com.google.android.gms.games.internal.player;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class PlayerColumnNames {
    public final String name;
    public final String title;
    public final String zzbcK;
    public final String zzbcL;
    public final String zzbcM;
    public final String zzbcN;
    public final String zzbcO;
    public final String zzbcP;
    public final String zzbcQ;
    public final String zzbcR;
    public final String zzbcS;
    public final String zzbcT;
    public final String zzbcU;
    public final String zzbcV;
    public final String zzbcW;
    public final String zzbcX;
    public final String zzbcY;
    public final String zzbcZ;
    public final String zzbda;
    public final String zzbdb;
    public final String zzbdc;
    public final String zzbdd;
    public final String zzbde;
    public final String zzbdf;
    public final String zzbdg;
    public final String zzbdh;
    public final String zzbdi;
    public final String zzbdj;
    public final String zzbdk;
    public final String zzbdl;
    public final String zzbdm;
    public final String zzbdn;
    public final String zzbdo;
    public final String zzbdp;
    public final String zzbdq;

    public PlayerColumnNames(String str) {
        if (TextUtils.isEmpty(str)) {
            this.zzbcK = "external_player_id";
            this.zzbcL = "profile_name";
            this.zzbcM = "profile_icon_image_uri";
            this.zzbcN = "profile_icon_image_url";
            this.zzbcO = "profile_hi_res_image_uri";
            this.zzbcP = "profile_hi_res_image_url";
            this.zzbcQ = "last_updated";
            this.zzbcR = "is_in_circles";
            this.zzbcS = "played_with_timestamp";
            this.zzbcT = "current_xp_total";
            this.zzbcU = "current_level";
            this.zzbcV = "current_level_min_xp";
            this.zzbcW = "current_level_max_xp";
            this.zzbcX = "next_level";
            this.zzbcY = "next_level_max_xp";
            this.zzbcZ = "last_level_up_timestamp";
            this.title = "player_title";
            this.zzbda = "has_all_public_acls";
            this.zzbdb = "is_profile_visible";
            this.zzbdc = "most_recent_external_game_id";
            this.zzbdd = "most_recent_game_name";
            this.zzbde = "most_recent_activity_timestamp";
            this.zzbdf = "most_recent_game_icon_uri";
            this.zzbdg = "most_recent_game_hi_res_uri";
            this.zzbdh = "most_recent_game_featured_uri";
            this.zzbdi = "has_debug_access";
            this.zzbdj = "gamer_tag";
            this.name = "real_name";
            this.zzbdk = "banner_image_landscape_uri";
            this.zzbdl = "banner_image_landscape_url";
            this.zzbdm = "banner_image_portrait_uri";
            this.zzbdn = "banner_image_portrait_url";
            this.zzbdo = "gamer_friend_status";
            this.zzbdp = "gamer_friend_update_timestamp";
            this.zzbdq = "is_muted";
            return;
        }
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf("external_player_id");
        this.zzbcK = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        String valueOf3 = String.valueOf(str);
        String valueOf4 = String.valueOf("profile_name");
        this.zzbcL = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        String valueOf5 = String.valueOf(str);
        String valueOf6 = String.valueOf("profile_icon_image_uri");
        this.zzbcM = valueOf6.length() != 0 ? valueOf5.concat(valueOf6) : new String(valueOf5);
        String valueOf7 = String.valueOf(str);
        String valueOf8 = String.valueOf("profile_icon_image_url");
        this.zzbcN = valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7);
        String valueOf9 = String.valueOf(str);
        String valueOf10 = String.valueOf("profile_hi_res_image_uri");
        this.zzbcO = valueOf10.length() != 0 ? valueOf9.concat(valueOf10) : new String(valueOf9);
        String valueOf11 = String.valueOf(str);
        String valueOf12 = String.valueOf("profile_hi_res_image_url");
        this.zzbcP = valueOf12.length() != 0 ? valueOf11.concat(valueOf12) : new String(valueOf11);
        String valueOf13 = String.valueOf(str);
        String valueOf14 = String.valueOf("last_updated");
        this.zzbcQ = valueOf14.length() != 0 ? valueOf13.concat(valueOf14) : new String(valueOf13);
        String valueOf15 = String.valueOf(str);
        String valueOf16 = String.valueOf("is_in_circles");
        this.zzbcR = valueOf16.length() != 0 ? valueOf15.concat(valueOf16) : new String(valueOf15);
        String valueOf17 = String.valueOf(str);
        String valueOf18 = String.valueOf("played_with_timestamp");
        this.zzbcS = valueOf18.length() != 0 ? valueOf17.concat(valueOf18) : new String(valueOf17);
        String valueOf19 = String.valueOf(str);
        String valueOf20 = String.valueOf("current_xp_total");
        this.zzbcT = valueOf20.length() != 0 ? valueOf19.concat(valueOf20) : new String(valueOf19);
        String valueOf21 = String.valueOf(str);
        String valueOf22 = String.valueOf("current_level");
        this.zzbcU = valueOf22.length() != 0 ? valueOf21.concat(valueOf22) : new String(valueOf21);
        String valueOf23 = String.valueOf(str);
        String valueOf24 = String.valueOf("current_level_min_xp");
        this.zzbcV = valueOf24.length() != 0 ? valueOf23.concat(valueOf24) : new String(valueOf23);
        String valueOf25 = String.valueOf(str);
        String valueOf26 = String.valueOf("current_level_max_xp");
        this.zzbcW = valueOf26.length() != 0 ? valueOf25.concat(valueOf26) : new String(valueOf25);
        String valueOf27 = String.valueOf(str);
        String valueOf28 = String.valueOf("next_level");
        this.zzbcX = valueOf28.length() != 0 ? valueOf27.concat(valueOf28) : new String(valueOf27);
        String valueOf29 = String.valueOf(str);
        String valueOf30 = String.valueOf("next_level_max_xp");
        this.zzbcY = valueOf30.length() != 0 ? valueOf29.concat(valueOf30) : new String(valueOf29);
        String valueOf31 = String.valueOf(str);
        String valueOf32 = String.valueOf("last_level_up_timestamp");
        this.zzbcZ = valueOf32.length() != 0 ? valueOf31.concat(valueOf32) : new String(valueOf31);
        String valueOf33 = String.valueOf(str);
        String valueOf34 = String.valueOf("player_title");
        this.title = valueOf34.length() != 0 ? valueOf33.concat(valueOf34) : new String(valueOf33);
        String valueOf35 = String.valueOf(str);
        String valueOf36 = String.valueOf("has_all_public_acls");
        this.zzbda = valueOf36.length() != 0 ? valueOf35.concat(valueOf36) : new String(valueOf35);
        String valueOf37 = String.valueOf(str);
        String valueOf38 = String.valueOf("is_profile_visible");
        this.zzbdb = valueOf38.length() != 0 ? valueOf37.concat(valueOf38) : new String(valueOf37);
        String valueOf39 = String.valueOf(str);
        String valueOf40 = String.valueOf("most_recent_external_game_id");
        this.zzbdc = valueOf40.length() != 0 ? valueOf39.concat(valueOf40) : new String(valueOf39);
        String valueOf41 = String.valueOf(str);
        String valueOf42 = String.valueOf("most_recent_game_name");
        this.zzbdd = valueOf42.length() != 0 ? valueOf41.concat(valueOf42) : new String(valueOf41);
        String valueOf43 = String.valueOf(str);
        String valueOf44 = String.valueOf("most_recent_activity_timestamp");
        this.zzbde = valueOf44.length() != 0 ? valueOf43.concat(valueOf44) : new String(valueOf43);
        String valueOf45 = String.valueOf(str);
        String valueOf46 = String.valueOf("most_recent_game_icon_uri");
        this.zzbdf = valueOf46.length() != 0 ? valueOf45.concat(valueOf46) : new String(valueOf45);
        String valueOf47 = String.valueOf(str);
        String valueOf48 = String.valueOf("most_recent_game_hi_res_uri");
        this.zzbdg = valueOf48.length() != 0 ? valueOf47.concat(valueOf48) : new String(valueOf47);
        String valueOf49 = String.valueOf(str);
        String valueOf50 = String.valueOf("most_recent_game_featured_uri");
        this.zzbdh = valueOf50.length() != 0 ? valueOf49.concat(valueOf50) : new String(valueOf49);
        String valueOf51 = String.valueOf(str);
        String valueOf52 = String.valueOf("has_debug_access");
        this.zzbdi = valueOf52.length() != 0 ? valueOf51.concat(valueOf52) : new String(valueOf51);
        String valueOf53 = String.valueOf(str);
        String valueOf54 = String.valueOf("gamer_tag");
        this.zzbdj = valueOf54.length() != 0 ? valueOf53.concat(valueOf54) : new String(valueOf53);
        String valueOf55 = String.valueOf(str);
        String valueOf56 = String.valueOf("real_name");
        this.name = valueOf56.length() != 0 ? valueOf55.concat(valueOf56) : new String(valueOf55);
        String valueOf57 = String.valueOf(str);
        String valueOf58 = String.valueOf("banner_image_landscape_uri");
        this.zzbdk = valueOf58.length() != 0 ? valueOf57.concat(valueOf58) : new String(valueOf57);
        String valueOf59 = String.valueOf(str);
        String valueOf60 = String.valueOf("banner_image_landscape_url");
        this.zzbdl = valueOf60.length() != 0 ? valueOf59.concat(valueOf60) : new String(valueOf59);
        String valueOf61 = String.valueOf(str);
        String valueOf62 = String.valueOf("banner_image_portrait_uri");
        this.zzbdm = valueOf62.length() != 0 ? valueOf61.concat(valueOf62) : new String(valueOf61);
        String valueOf63 = String.valueOf(str);
        String valueOf64 = String.valueOf("banner_image_portrait_url");
        this.zzbdn = valueOf64.length() != 0 ? valueOf63.concat(valueOf64) : new String(valueOf63);
        String valueOf65 = String.valueOf(str);
        String valueOf66 = String.valueOf("gamer_friend_status");
        this.zzbdo = valueOf66.length() != 0 ? valueOf65.concat(valueOf66) : new String(valueOf65);
        String valueOf67 = String.valueOf(str);
        String valueOf68 = String.valueOf("gamer_friend_update_timestamp");
        this.zzbdp = valueOf68.length() != 0 ? valueOf67.concat(valueOf68) : new String(valueOf67);
        String valueOf69 = String.valueOf(str);
        String valueOf70 = String.valueOf("is_muted");
        this.zzbdq = valueOf70.length() != 0 ? valueOf69.concat(valueOf70) : new String(valueOf69);
    }
}