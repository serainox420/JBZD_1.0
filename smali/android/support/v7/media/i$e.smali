.class public final Landroid/support/v7/media/i$e;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_1

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 311
    :cond_1
    :try_start_0
    const-class v0, Landroid/media/MediaRouter;

    const-string v1, "selectRouteInt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/media/MediaRouter$RouteInfo;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/i$e;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 318
    check-cast p1, Landroid/media/MediaRouter;

    .line 319
    check-cast p3, Landroid/media/MediaRouter$RouteInfo;

    .line 322
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    .line 323
    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/support/v7/media/i$e;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/media/i$e;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 349
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const-string v1, "MediaRouterJellybean"

    const-string v2, "Cannot programmatically select non-user route.  Media routing may not work."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    :cond_0
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 336
    :catch_1
    move-exception v0

    .line 337
    const-string v1, "MediaRouterJellybean"

    const-string v2, "Cannot programmatically select non-user route.  Media routing may not work."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 341
    :cond_1
    const-string v0, "MediaRouterJellybean"

    const-string v1, "Cannot programmatically select non-user route because the platform is missing the selectRouteInt() method.  Media routing may not work."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
