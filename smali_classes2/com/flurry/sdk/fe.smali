.class public final Lcom/flurry/sdk/fe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 29
    const-class v0, Lcom/flurry/sdk/fe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    .line 2230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2239
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 2240
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2241
    invoke-virtual {v1, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2243
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2245
    invoke-virtual {v1, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2246
    invoke-virtual {v1, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2247
    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2249
    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2251
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2231
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2259
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 2260
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2261
    invoke-virtual {v1, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2262
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2263
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2265
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2267
    invoke-virtual {v1, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2268
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2270
    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2272
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2232
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sput-object v0, Lcom/flurry/sdk/fe;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x7

    return v0
.end method

.method private static a(Landroid/app/Activity;II)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 203
    .line 204
    if-nez p0, :cond_0

    .line 213
    :goto_0
    return v1

    .line 208
    :cond_0
    sget-object v0, Lcom/flurry/sdk/fe;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 209
    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :goto_1
    move v1, v0

    .line 213
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Lcom/flurry/sdk/dg;)I
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    sget-object v1, Lcom/flurry/sdk/dg;->a:Lcom/flurry/sdk/dg;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/dg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const/4 v0, 0x1

    .line 225
    :cond_0
    :goto_0
    const/4 v1, -0x1

    invoke-static {p0, v1, v0}, Lcom/flurry/sdk/fe;->a(Landroid/app/Activity;II)I

    move-result v0

    return v0

    .line 221
    :cond_1
    sget-object v1, Lcom/flurry/sdk/dg;->b:Lcom/flurry/sdk/dg;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/dg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/ActivityInfo;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 172
    if-nez p0, :cond_1

    .line 173
    const/4 v0, 0x0

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 177
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 178
    or-int/lit16 v0, v0, 0xc00

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 132
    .line 134
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot find info for activity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 88
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 89
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 92
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    sget-object v0, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v1, "Context is null. Cannot set requested orientation."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/flurry/sdk/fe;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v1, "setOrientation SCREEN_ORIENTATION_SENSOR"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setOrientation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 36
    :goto_0
    sget-object v1, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isTablet "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;I)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 99
    if-nez p0, :cond_0

    move v0, v1

    .line 127
    :goto_0
    return v0

    .line 2148
    :cond_0
    if-nez p0, :cond_1

    .line 2149
    const/4 v0, 0x0

    .line 1157
    :goto_1
    invoke-static {v0}, Lcom/flurry/sdk/fe;->a(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    .line 1159
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_2

    move v0, v1

    .line 107
    :goto_2
    if-nez v0, :cond_6

    .line 2187
    if-nez p0, :cond_4

    move v0, v3

    .line 111
    :goto_3
    if-ne v3, v0, :cond_5

    .line 112
    const/4 v0, 0x5

    sget-object v2, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot set requested orientation without restarting activity, requestedOrientation = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot set requested orientation without restarting activity. It is recommended to add keyboardHidden|orientation|screenSize for android:configChanges attribute for activity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v0, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 118
    goto :goto_0

    .line 2152
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/flurry/sdk/fe;->a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_1

    .line 1163
    :cond_2
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_3

    move v0, v1

    .line 1164
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1167
    goto :goto_2

    .line 2192
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2191
    invoke-static {p0, p1, v0}, Lcom/flurry/sdk/fe;->a(Landroid/app/Activity;II)I

    move-result v0

    goto :goto_3

    :cond_5
    move p1, v0

    .line 122
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v0, v2

    .line 127
    goto :goto_0
.end method
