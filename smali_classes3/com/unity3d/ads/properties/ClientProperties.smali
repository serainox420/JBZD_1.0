.class public Lcom/unity3d/ads/properties/ClientProperties;
.super Ljava/lang/Object;
.source "ClientProperties.java"


# static fields
.field private static final DEBUG_CERT:Ljavax/security/auth/x500/X500Principal;

.field private static _activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static _applicationContext:Landroid/content/Context;

.field private static _gameId:Ljava/lang/String;

.field private static _listener:Lcom/unity3d/ads/IUnityAdsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unity3d/ads/properties/ClientProperties;->DEBUG_CERT:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 69
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "Error getting package info"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getGameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_gameId:Ljava/lang/String;

    return-object v0
.end method

.method public static getListener()Lcom/unity3d/ads/IUnityAdsListener;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    return-object v0
.end method

.method public static isAppDebuggable()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 83
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 84
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 91
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 92
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_4

    :goto_0
    move v2, v1

    .line 101
    :goto_1
    if-eqz v2, :cond_0

    .line 103
    const/16 v2, 0x40

    :try_start_1
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 104
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 106
    array-length v4, v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    move v2, v1

    move v1, v0

    :goto_2
    if-ge v2, v4, :cond_3

    :try_start_2
    aget-object v0, v3, v2

    .line 107
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 108
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 109
    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 110
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    sget-object v5, Lcom/unity3d/ads/properties/ClientProperties;->DEBUG_CERT:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    .line 111
    if-eqz v0, :cond_2

    .line 123
    :cond_0
    :goto_3
    return v0

    :cond_1
    move v0, v1

    .line 87
    goto :goto_3

    .line 96
    :catch_0
    move-exception v2

    .line 97
    const-string v5, "Could not find name"

    invoke-static {v5, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v2, v0

    move v0, v1

    .line 98
    goto :goto_1

    .line 106
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 115
    :catch_1
    move-exception v1

    .line 116
    :goto_4
    const-string v2, "Could not find name"

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 118
    :catch_2
    move-exception v1

    .line 119
    :goto_5
    const-string v2, "Certificate exception"

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 118
    :catch_3
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_5

    .line 115
    :catch_4
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_4

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_activity:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    sput-object p0, Lcom/unity3d/ads/properties/ClientProperties;->_applicationContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public static setGameId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    sput-object p0, Lcom/unity3d/ads/properties/ClientProperties;->_gameId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static setListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/unity3d/ads/properties/ClientProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    .line 50
    return-void
.end method
