.class Lcom/applovin/impl/sdk/r;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/util/List;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/applovin/sdk/AppLovinLogger;

.field private final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/r;->e:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/sdk/AppLovinLogger;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->d:Ljava/util/Map;

    return-void
.end method

.method static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No permission name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/applovin/impl/sdk/v;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->d:Ljava/util/Map;

    const-class v1, Lcom/applovin/impl/sdk/v;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/applovin/impl/sdk/v;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/applovin/impl/sdk/v;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/v;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/impl/sdk/v;->h:Ljava/util/Locale;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/applovin/impl/sdk/v;->a:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v1, Lcom/applovin/impl/sdk/v;->b:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v1, Lcom/applovin/impl/sdk/v;->c:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, v1, Lcom/applovin/impl/sdk/v;->e:I

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, v1, Lcom/applovin/impl/sdk/v;->d:Ljava/lang/String;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/applovin/impl/sdk/v;->f:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/applovin/impl/sdk/v;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ca;

    move-result-object v0

    sget-object v3, Lcom/applovin/impl/sdk/bx;->bo:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v1, Lcom/applovin/impl/sdk/v;->i:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->d:Ljava/util/Map;

    const-class v2, Lcom/applovin/impl/sdk/v;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    iput-object v0, v1, Lcom/applovin/impl/sdk/v;->g:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/r;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method b()Lcom/applovin/impl/sdk/u;
    .locals 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->d:Ljava/util/Map;

    const-class v1, Lcom/applovin/impl/sdk/u;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/applovin/impl/sdk/u;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/applovin/impl/sdk/u;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/u;-><init>()V

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v1, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/String;

    iput-wide v4, v1, Lcom/applovin/impl/sdk/u;->d:J

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/applovin/impl/sdk/u;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_2
    iput-object v0, v1, Lcom/applovin/impl/sdk/u;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->d:Ljava/util/Map;

    const-class v2, Lcom/applovin/impl/sdk/u;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method c()Lcom/applovin/impl/sdk/t;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v2, "isLimitAdTrackingEnabled"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "getId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lcom/applovin/impl/sdk/t;

    invoke-direct {v3}, Lcom/applovin/impl/sdk/t;-><init>()V

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    move-object v4, v1

    :goto_0
    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v3, Lcom/applovin/impl/sdk/t;->a:Z

    iput-object v4, v3, Lcom/applovin/impl/sdk/t;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v3

    :goto_1
    return-object v1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "DataCollector"

    const-string v4, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    new-instance v1, Lcom/applovin/impl/sdk/t;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/t;-><init>()V

    const-string v2, ""

    iput-object v2, v1, Lcom/applovin/impl/sdk/t;->b:Ljava/lang/String;

    iput-boolean v6, v1, Lcom/applovin/impl/sdk/t;->a:Z

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "DataCollector"

    const-string v4, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    move-object v4, v1

    goto :goto_0
.end method

.method d()Ljava/util/List;
    .locals 9

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/applovin/impl/sdk/r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/r;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/u;

    iget-object v1, v0, Lcom/applovin/impl/sdk/u;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/applovin/impl/sdk/r;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    new-instance v2, Lcom/applovin/impl/sdk/u;

    invoke-direct {v2}, Lcom/applovin/impl/sdk/u;-><init>()V

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v5, v8}, Lcom/applovin/impl/sdk/di;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/String;

    iput-wide v6, v2, Lcom/applovin/impl/sdk/u;->d:J

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v5, v2, Lcom/applovin/impl/sdk/u;->a:Ljava/lang/String;

    iget-object v5, v2, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/applovin/impl/sdk/u;->c:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v5, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v6, "DataCollector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read information for app \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0, v2}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/applovin/impl/sdk/s;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/s;-><init>(Lcom/applovin/impl/sdk/r;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sput-object v1, Lcom/applovin/impl/sdk/r;->e:Ljava/util/List;

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "DataCollector"

    const-string v4, "Unable to sort applications"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0
.end method
