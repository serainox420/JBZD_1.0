.class public final Lcom/revmob/a/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Lcom/revmob/RevMobAdsListener;

.field public static c:Z

.field public static d:Lorg/json/JSONArray;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/Thread;

.field private static g:Landroid/util/DisplayMetrics;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Lcom/revmob/client/f;

.field private static k:D

.field private static l:Z

.field private static m:Z

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:Lorg/json/JSONArray;

.field private static r:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/revmob/a/e;->g:Landroid/util/DisplayMetrics;

    const/4 v0, 0x0

    sput v0, Lcom/revmob/a/e;->p:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/revmob/a/e;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/revmob/a/e;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static a(ILorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v0, p0, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "removeObjectsIfAboveThreshold"

    invoke-static {v0, v5, v3, v5, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private static a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    if-eq v1, p1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v5, "rmJsonObjAtIndexFromJsonArray"

    invoke-static {v0, v6, v4, v6, v5}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private static a(Lorg/json/JSONArray;Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "putAtStartOfJSONArray"

    invoke-static {v1, v5, v3, v5, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-object v2
.end method

.method public static a(III)V
    .locals 9

    const/4 v8, 0x0

    sput p1, Lcom/revmob/a/e;->n:I

    sput p2, Lcom/revmob/a/e;->o:I

    sget-object v0, Lcom/revmob/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-lez p0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v2, "sessions"

    const-string v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "date"

    sget-wide v4, Lcom/revmob/a/e;->k:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v2, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;

    invoke-static {v2, v0}, Lcom/revmob/a/e;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;

    sget-object v0, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;

    invoke-static {p0, v0}, Lcom/revmob/a/e;->a(ILorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v0, Lcom/revmob/a/e;->n:I

    if-lez v0, :cond_1

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    const-string v2, "history"

    const-string v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    sget v0, Lcom/revmob/a/e;->n:I

    sget-object v1, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/revmob/a/e;->a(ILorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "initCampaignHistory1"

    invoke-static {v0, v8, v2, v8, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "initCampaignHistory2"

    invoke-static {v0, v8, v1, v8, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;D)V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/revmob/a/e;->d:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    sget-object v1, Lcom/revmob/a/e;->d:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    :try_start_1
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/revmob/a/e;->d:Lorg/json/JSONArray;

    invoke-static {v3, v0}, Lcom/revmob/a/e;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    const-string v3, "creative"

    invoke-virtual {v1, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v3, Lcom/revmob/a/e;->d:Lorg/json/JSONArray;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "addCreativeTime1"

    invoke-static {v1, v2, v3, v2, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "addCreativeTime2"

    invoke-static {v1, v2, v3, v2, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    sput-object p1, Lcom/revmob/a/e;->a:Landroid/content/Context;

    sget-object v0, Lcom/revmob/client/RevMobClient;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RevMob SDK Version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/revmob/client/RevMobClient;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/revmob/client/RevMobClient;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/revmob/client/RevMobClient;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IP Address: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/revmob/internal/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Simulator: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Emulator"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OS Version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android API: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manufacturer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Model: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    const-string v0, "Android ID: "

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    const-string v0, "Serial number: "

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID for Advertising: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/revmob/a/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Limit Ad Tracking: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/revmob/a/e;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Is User a Kid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/revmob/a/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Language: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Locale: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/revmob/a/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User Agent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/revmob/internal/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screen size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/revmob/a/e;->g:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/revmob/a/e;->g:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Density scale: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/revmob/a/e;->g:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Density dpi: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/revmob/a/e;->g:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User Location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/revmob/a/e;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RevMob SDK Version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/revmob/client/RevMobClient;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "printEnvironmentInformation"

    invoke-static {v0, v3, v1, v3, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Lcom/revmob/client/f;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    sput-object p0, Lcom/revmob/a/e;->i:Ljava/lang/String;

    sput-object p1, Lcom/revmob/a/e;->j:Lcom/revmob/client/f;

    sput-object p2, Lcom/revmob/a/e;->b:Lcom/revmob/RevMobAdsListener;

    sput-object p3, Lcom/revmob/a/e;->a:Landroid/content/Context;

    sget-object v0, Lcom/revmob/a/e;->f:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/revmob/a/f;

    invoke-direct {v1}, Lcom/revmob/a/f;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/revmob/a/e;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "loadAdvertisingInfo2"

    invoke-static {v0, v3, v1, v3, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading advertising info: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_a

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget v1, Lcom/revmob/a/e;->p:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/revmob/a/e;->p:I

    sget-object v1, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    move v1, v0

    move-object v0, v2

    :goto_0
    sget-object v3, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_b

    move-result v4

    if-eqz v4, :cond_5

    :try_start_2
    sget-object v0, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/revmob/a/e;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v3

    :cond_0
    if-nez v0, :cond_6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    sget-object v1, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    invoke-static {v1, v0}, Lcom/revmob/a/e;->a(Lorg/json/JSONArray;Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    sget v0, Lcom/revmob/a/e;->n:I

    sget-object v1, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/revmob/a/e;->a(ILorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    :cond_1
    sget-object v0, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    :try_start_4
    sget-object v0, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    :goto_3
    if-nez v0, :cond_b

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    sget-object v1, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v3, v0

    :goto_4
    :try_start_6
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v1

    :goto_5
    if-nez v1, :cond_8

    sget v0, Lcom/revmob/a/e;->o:I

    if-eqz v0, :cond_7

    :try_start_7
    new-instance v0, Lorg/json/JSONArray;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/revmob/a/e;->p:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_2
    :goto_6
    sget-object v0, Lcom/revmob/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    const-string v1, "history"

    sget-object v2, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    sget-object v1, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;

    if-eqz v1, :cond_4

    const-string v1, "sessions"

    sget-object v2, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_7
    return-void

    :catch_0
    move-exception v3

    sget-object v4, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v5, "recordCampaign1"

    invoke-static {v3, v2, v4, v2, v5}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v3

    move-object v3, v6

    :goto_8
    sget-object v4, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v5, "recordCampaign2"

    invoke-static {v3, v2, v4, v2, v5}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "recordCampaign3"

    invoke-static {v1, v2, v3, v2, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    :try_start_8
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v1

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "recordCampaign4"

    invoke-static {v1, v2, v3, v2, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object v0, v2

    goto/16 :goto_3

    :catch_5
    move-exception v1

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "recordCampaign6"

    invoke-static {v1, v2, v3, v2, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v0

    goto/16 :goto_4

    :catch_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    :catch_7
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "recordCampaign8"

    invoke-static {v0, v2, v1, v2, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    const/4 v0, 0x1

    :try_start_9
    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_6

    :catch_8
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "recordCampaign9"

    invoke-static {v0, v2, v1, v2, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_9

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    sget v4, Lcom/revmob/a/e;->p:I

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    sget v4, Lcom/revmob/a/e;->o:I

    if-le v0, v4, :cond_2

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :try_start_a
    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_6

    :catch_9
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "recordCampaign10"

    invoke-static {v0, v2, v1, v2, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    :try_start_b
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_6

    :catch_a
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "recordCampaign11"

    invoke-static {v0, v2, v1, v2, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null object somewhere: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_b
    move-exception v3

    goto/16 :goto_8

    :cond_b
    move-object v3, v0

    goto/16 :goto_4
.end method

.method public static a(Ljava/lang/String;ZDD)V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/revmob/a/e;->d:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_0
    sget-object v1, Lcom/revmob/a/e;->d:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    :goto_1
    :try_start_1
    const-string v1, "id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/revmob/a/e;->d:Lorg/json/JSONArray;

    invoke-static {v1, v0}, Lcom/revmob/a/e;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    if-eqz p1, :cond_1

    const-string v1, "fetchClick"

    :goto_2
    invoke-virtual {v2, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "redirects"

    invoke-virtual {v2, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v1, Lcom/revmob/a/e;->d:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "addClickAndRedirectsTime1"

    invoke-static {v1, v3, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v3

    goto :goto_1

    :cond_1
    :try_start_2
    const-string v1, "click"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "addClickAndRedirectsTime2"

    invoke-static {v1, v3, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :cond_2
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/revmob/a/e;->m:Z

    return p0
.end method

.method public static b()Lorg/json/JSONObject;
    .locals 14

    const-wide v12, 0x408f400000000000L    # 1000.0

    const/16 v8, 0xd

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/revmob/a/e;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/revmob/a/e;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :try_start_0
    sget-wide v0, Lcom/revmob/a/e;->k:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lcom/revmob/a/e;->k:D

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "social"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v7}, Lcom/revmob/a/h;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "age_range_max"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "age_range_max"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    const-string v0, "age_range_min"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "age_range_min"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v5, :cond_1

    if-eqz v0, :cond_e

    :cond_1
    if-eqz v5, :cond_b

    if-eqz v0, :cond_b

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v5, v8, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v8, :cond_a

    :cond_2
    move v0, v3

    :goto_2
    sput-boolean v0, Lcom/revmob/a/e;->l:Z

    :cond_3
    :goto_3
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "device"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "screen"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "width"

    sget-object v9, Lcom/revmob/a/e;->g:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "height"

    sget-object v9, Lcom/revmob/a/e;->g:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "scale"

    sget-object v9, Lcom/revmob/a/e;->g:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    float-to-double v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v8, "density_dpi"

    sget-object v9, Lcom/revmob/a/e;->g:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6, v0, v7}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "api"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v0, v7}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "manufacturer"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v6, v0, v7}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os_version"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6, v0, v7}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "orientation"

    sget-object v0, Lcom/revmob/a/e;->a:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v9, "1."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v9, "2.0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v9, "2.1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_4
    move v0, v4

    :goto_4
    if-eqz v0, :cond_10

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v0

    :goto_5
    if-nez v0, :cond_11

    const-string v0, "0"

    :goto_6
    invoke-static {v6, v7, v0}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {}, Lcom/revmob/a/e;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/revmob/internal/c;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "location"

    invoke-static {}, Lcom/revmob/a/e;->e()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v0, "android_id"

    const-string v3, ""

    invoke-static {v6, v0, v3}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serial"

    const-string v3, ""

    invoke-static {v6, v0, v3}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "identifier_for_advertising"

    sget-object v3, Lcom/revmob/a/e;->h:Ljava/lang/String;

    invoke-static {v6, v0, v3}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "limit_ad_tracking"

    invoke-static {}, Lcom/revmob/a/e;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_kid"

    invoke-static {}, Lcom/revmob/a/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "name"

    sget-object v5, Lcom/revmob/client/RevMobClient;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "version"

    sget-object v5, Lcom/revmob/client/RevMobClient;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "bannerMethod"

    sget-object v5, Lcom/revmob/a/e;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v4, 0x0

    sput-object v4, Lcom/revmob/a/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app"

    invoke-static {}, Lcom/revmob/a/e;->g()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-boolean v0, Lcom/revmob/ads/banner/RevMobBanner;->isBannerImpression:Z

    if-eqz v0, :cond_6

    const-string v0, "bannerImpressions"

    invoke-static {}, Lcom/revmob/a/e;->f()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->setBannerImpression(Z)V

    :cond_6
    sget-boolean v0, Lcom/revmob/a/e;->c:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    if-eqz v0, :cond_7

    const-string v0, "campaigns"

    sget-object v3, Lcom/revmob/a/e;->r:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    sget-object v0, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;

    if-eqz v0, :cond_8

    const-string v0, "sessions"

    sget-object v3, Lcom/revmob/a/e;->q:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "date"

    sget-wide v4, Lcom/revmob/a/e;->k:D

    div-double/2addr v4, v12

    double-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    sget-wide v6, Lcom/revmob/a/e;->k:D

    sub-double/2addr v4, v6

    div-double/2addr v4, v12

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "ads"

    sget-object v4, Lcom/revmob/a/e;->d:Lorg/json/JSONArray;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "time"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/revmob/a/e;->d:Lorg/json/JSONArray;

    :cond_9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/revmob/a/e;->c:Z

    move-object v0, v1

    :goto_7
    return-object v0

    :cond_a
    move v0, v4

    goto/16 :goto_2

    :cond_b
    if-eqz v0, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v8, :cond_c

    move v0, v3

    :goto_8
    sput-boolean v0, Lcom/revmob/a/e;->l:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "revmobJSON"

    invoke-static {v0, v2, v1, v2, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_7

    :cond_c
    move v0, v4

    goto :goto_8

    :cond_d
    if-eqz v5, :cond_3

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v8, :cond_e

    move v0, v3

    :goto_9
    sput-boolean v0, Lcom/revmob/a/e;->l:Z

    goto/16 :goto_3

    :cond_e
    move v0, v4

    goto :goto_9

    :cond_f
    move v0, v3

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v8}, Landroid/view/Display;->getOrientation()I

    move-result v0

    goto/16 :goto_5

    :cond_11
    if-ne v0, v3, :cond_12

    const-string v0, "90"

    goto/16 :goto_6

    :cond_12
    const/4 v3, 0x2

    if-ne v0, v3, :cond_13

    const-string v0, "180"

    goto/16 :goto_6

    :cond_13
    const/4 v3, 0x3

    if-ne v0, v3, :cond_14

    const-string v0, "270"

    goto/16 :goto_6

    :cond_14
    const-string v0, "-1"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :cond_15
    move-object v0, v2

    goto/16 :goto_1

    :cond_16
    move-object v5, v2

    goto/16 :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/revmob/a/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Lcom/revmob/client/f;
    .locals 1

    sget-object v0, Lcom/revmob/a/e;->j:Lcom/revmob/client/f;

    return-object v0
.end method

.method private static e()Lorg/json/JSONObject;
    .locals 9

    const/4 v8, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v0, Lcom/revmob/a/e;->a:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/revmob/a/e;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/revmob/a/e;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    const-string v0, "latitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "longitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "accuracy"

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "accuracy"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "getUserLocation"

    invoke-static {v0, v8, v2, v8, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    :try_start_1
    const-string v0, "latitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "longitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "accuracy"

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_1

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "accuracy"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static f()Lorg/json/JSONObject;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "bannerCount"

    sget v2, Lcom/revmob/ads/banner/RevMobBanner;->bannerCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "campaigns"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method private static g()Lorg/json/JSONObject;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "bundle_identifier"

    sget-object v3, Lcom/revmob/a/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/revmob/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "app_name"

    const-string v4, "string"

    sget-object v5, Lcom/revmob/a/e;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "app_name"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/revmob/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v3, Lcom/revmob/a/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v4, "app_version"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "app_version_name"

    invoke-static {v2, v3, v0}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v0, Lcom/revmob/a/g;

    sget-object v3, Lcom/revmob/a/e;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/revmob/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/revmob/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_0

    const-string v0, "install_not_registered"

    const-string v1, "true"

    invoke-static {v2, v0, v1}, Lcom/revmob/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "getAppJSON1"

    invoke-static {v0, v6, v3, v6, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v4, "getAppJSON2"

    invoke-static {v0, v6, v3, v6, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2
.end method

.method private static h()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/revmob/a/e;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private static j()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/revmob/a/e;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
