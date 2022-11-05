.class public Lnet/openudid/android/OpenUDID;
.super Ljava/lang/Object;
.source "OpenUDID.java"


# static fields
.field private static final LOG:Z = true

.field public static final PREFS_NAME:Ljava/lang/String; = "openudid_prefs"

.field public static final PREF_KEY:Ljava/lang/String; = "openudid"

.field public static final TAG:Ljava/lang/String; = "OpenUDID"

.field private static final _UseBlueToothFailback:Z

.field private static final _UseImeiFailback:Z

.field private static _openUdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 153
    const/4 v0, 0x0

    .line 155
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 160
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 162
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 163
    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 164
    :cond_0
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    .line 166
    const/16 v4, 0xf

    if-gt v3, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static _debugLog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    const-string v0, "OpenUDID"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method private static generateBlueToothId()V
    .locals 3

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BTMAC:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static generateImeiId(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 114
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 115
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMEI:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static generateOpenUDIDInContext(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 73
    const-string v0, "Generating openUDID"

    invoke-static {v0}, Lnet/openudid/android/OpenUDID;->_debugLog(Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lnet/openudid/android/OpenUDID;->generateWifiId(Landroid/content/Context;)V

    .line 76
    sget-object v0, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-le v1, v2, :cond_1

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ANDROID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {}, Lnet/openudid/android/OpenUDID;->generateRandomNumber()V

    .line 106
    sget-object v0, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;

    invoke-static {v0}, Lnet/openudid/android/OpenUDID;->_debugLog(Ljava/lang/String;)V

    .line 108
    const-string v0, "done"

    invoke-static {v0}, Lnet/openudid/android/OpenUDID;->_debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static generateRandomNumber()V
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/openudid/android/OpenUDID;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private static generateSystemId()V
    .locals 6

    .prologue
    .line 184
    const-string v0, "%s/%s/%s/%s:%s/%s/%s:%s/%s/%d-%s-%s-%s-%s"

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 185
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 186
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 187
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 188
    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 189
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 190
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 191
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 192
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 193
    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 194
    sget-wide v4, Landroid/os/Build;->TIME:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 195
    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 184
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lnet/openudid/android/OpenUDID;->_debugLog(Ljava/lang/String;)V

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-static {v0}, Lnet/openudid/android/OpenUDID;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;

    .line 201
    :cond_0
    return-void
.end method

.method private static generateWifiId(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 138
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 139
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 141
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/openudid/android/OpenUDID;->_debugLog(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WIFIMAC:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getCorpUDID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lnet/openudid/android/OpenUDID;->getOpenUDIDInContext()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lnet/openudid/android/OpenUDID;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenUDIDInContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;

    return-object v0
.end method

.method public static syncContext(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    :try_start_0
    const-string v0, "net.openudid.android"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 47
    :goto_0
    const-string v0, "openudid_prefs"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    const-string v1, "openudid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    invoke-static {p0}, Lnet/openudid/android/OpenUDID;->generateOpenUDIDInContext(Landroid/content/Context;)V

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    const-string v1, "openudid"

    sget-object v2, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    :cond_0
    :goto_1
    return-void

    .line 55
    :cond_1
    sput-object v1, Lnet/openudid/android/OpenUDID;->_openUdid:Ljava/lang/String;

    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method
