.class Lcom/amazon/device/ads/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasInternetPermission(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 29
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasLocationPermission(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 58
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

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

.method public hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhonePermission(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 39
    const-string v0, "android.permission.CALL_PHONE"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasReadCalendarPermission(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 49
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSmsPermission(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 34
    const-string v0, "android.permission.SEND_SMS"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasWriteCalendarPermission(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 44
    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasWriteExternalStoragePermission(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 54
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
