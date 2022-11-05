.class Lcom/inmobi/commons/uid/a;
.super Ljava/lang/Object;
.source "UIDHelper.java"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static b:Lcom/inmobi/commons/uid/AdvertisingId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/uid/a;->a:Landroid/net/Uri;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/uid/a;->b:Lcom/inmobi/commons/uid/AdvertisingId;

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "1"

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getDigested(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 189
    const-string v0, "impref"

    const-string v1, "IMID"

    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v1, "impref"

    const-string v2, "timestamp"

    invoke-static {p0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getLongPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 193
    if-nez v0, :cond_0

    .line 194
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string v1, "impref"

    const-string v4, "IMID"

    invoke-static {p0, v1, v4, v0}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    const-string v1, "impref"

    const-string v4, "AID"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getAid()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v1, v4, v5}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    const-string v1, "impref"

    const-string v4, "AIDL"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getAid()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v1, v4, v5}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 201
    const-string v1, "impref"

    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {p0, v1, v2, v4, v5}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 205
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 206
    const-string v2, "com.inmobi.share.id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v2, "IMID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v0, "AIDL"

    const-string v2, "impref"

    const-string v3, "AIDL"

    invoke-static {p0, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v0, "timestamp"

    const-string v2, "impref"

    const-string v3, "timestamp"

    invoke-static {p0, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getLongPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 212
    const-string v0, "AID"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/inmobi/commons/IMIDType;->ID_SESSION:Lcom/inmobi/commons/IMIDType;

    invoke-static {v0}, Lcom/inmobi/commons/data/DemogInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    const-string v0, "impref"

    const-string v1, "IMID"

    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getDigested(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/inmobi/commons/IMIDType;->ID_LOGIN:Lcom/inmobi/commons/IMIDType;

    invoke-static {v0}, Lcom/inmobi/commons/data/DemogInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 225
    const-string v0, "impref"

    const-string v2, "AID"

    invoke-static {p0, v0, v2}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    if-eqz v2, :cond_0

    .line 227
    const-string v0, "p"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_0
    const-string v0, "impref"

    const-string v3, "AIDL"

    invoke-static {p0, v0, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_3

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    .line 242
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 245
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 246
    const-string v0, "s"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "aid"

    aput-object v3, v2, v1

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/uid/a;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v6

    .line 98
    :cond_1
    :goto_0
    return-object v0

    .line 89
    :cond_2
    const-string v1, "aid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    move-object v0, v6

    .line 92
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v1, "[InMobi]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve Facebook attrib id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 98
    goto :goto_0
.end method

.method static e()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 116
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 117
    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    .line 118
    const-string v2, "com.inmobi.commons.uid.PlatformId"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 119
    const-string v3, "getAndroidId"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 120
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 124
    goto :goto_0
.end method

.method static f()Lcom/inmobi/commons/uid/AdvertisingId;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/inmobi/commons/uid/a;->b:Lcom/inmobi/commons/uid/AdvertisingId;

    return-object v0
.end method

.method static g()V
    .locals 4

    .prologue
    .line 138
    new-instance v0, Lcom/inmobi/commons/uid/AdvertisingId;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/AdvertisingId;-><init>()V

    sput-object v0, Lcom/inmobi/commons/uid/a;->b:Lcom/inmobi/commons/uid/AdvertisingId;

    .line 139
    sget-object v0, Lcom/inmobi/commons/uid/a;->b:Lcom/inmobi/commons/uid/AdvertisingId;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "impref"

    const-string v3, "gpid"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/uid/AdvertisingId;->a(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/inmobi/commons/uid/a;->b:Lcom/inmobi/commons/uid/AdvertisingId;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "impref"

    const-string v3, "limitadtrck"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/uid/AdvertisingId;->a(Z)V

    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/commons/uid/a$1;

    invoke-direct {v1}, Lcom/inmobi/commons/uid/a$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 169
    return-void
.end method

.method static h()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 173
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 175
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static i()Z
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/inmobi/commons/uid/a;->f()Lcom/inmobi/commons/uid/AdvertisingId;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/inmobi/commons/uid/AdvertisingId;->isLimitAdTracking()Z

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j()Lcom/inmobi/commons/uid/AdvertisingId;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/inmobi/commons/uid/a;->b:Lcom/inmobi/commons/uid/AdvertisingId;

    return-object v0
.end method
