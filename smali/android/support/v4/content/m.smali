.class public final Landroid/support/v4/content/m;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 126
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {p0, p1, v0, v1, v2}, Landroid/support/v4/content/m;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-static {p1}, Landroid/support/v4/app/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    if-nez v2, :cond_2

    move v0, v1

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    if-nez p4, :cond_3

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 103
    aget-object p4, v3, v1

    .line 106
    :cond_3
    invoke-static {p0, v2, p4}, Landroid/support/v4/app/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    const/4 v0, -0x2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 111
    goto :goto_0
.end method
