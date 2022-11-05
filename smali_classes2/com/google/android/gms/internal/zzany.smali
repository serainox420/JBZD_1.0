.class public Lcom/google/android/gms/internal/zzany;
.super Ljava/lang/Object;


# static fields
.field private static zzaUv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/internal/zzany;->zzaUv:I

    return-void
.end method

.method private static zzCH()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "glass_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzbo(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/util/zzj;->zzaZ(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static zzbp(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/google/android/gms/internal/zzany;->zzaUv:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzany;->zzbo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    sput v0, Lcom/google/android/gms/internal/zzany;->zzaUv:I

    :cond_0
    :goto_0
    sget v0, Lcom/google/android/gms/internal/zzany;->zzaUv:I

    return v0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/zzany;->zzbs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzany;->zzbq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/zzany;->zzaUv:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/internal/zzany;->zzaUv:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzany;->zzCH()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    sput v0, Lcom/google/android/gms/internal/zzany;->zzaUv:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/zzany;->zzaUv:I

    goto :goto_0
.end method

.method private static zzbq(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzj;->zzb(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzany;->zzbr(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzbr(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Fitness"

    const-string v3, "Unable to determine type of device, assuming phone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method private static zzbs(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
