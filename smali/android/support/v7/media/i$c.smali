.class public final Landroid/support/v7/media/i$c;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_1

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 364
    :cond_1
    :try_start_0
    const-class v0, Landroid/media/MediaRouter;

    const-string v1, "getSystemAudioRoute"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 365
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/i$c;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    check-cast p1, Landroid/media/MediaRouter;

    .line 373
    iget-object v0, p0, Landroid/support/v7/media/i$c;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 375
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/media/i$c;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 377
    :catch_0
    move-exception v0

    .line 383
    :cond_0
    :goto_1
    invoke-virtual {p1, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    goto :goto_0

    .line 376
    :catch_1
    move-exception v0

    goto :goto_1
.end method
