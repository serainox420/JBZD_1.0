.class public final Lcom/google/android/gms/cast/framework/CastButtonFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUpMediaRouteButton(Landroid/content/Context;Landroid/view/Menu;I)Landroid/view/MenuItem;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "menu doesn\'t contain a menu item whose ID is %d."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v2}, Landroid/support/v4/view/q;->b(Landroid/view/MenuItem;)Landroid/support/v4/view/d;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/m;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "menu item with ID %d doesn\'t have a MediaRouteActionProvider."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastContext;->getMergedSelector()Landroid/support/v7/media/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/m;->a(Landroid/support/v7/media/f;)V

    return-object v2
.end method

.method public static setUpMediaRouteButton(Landroid/content/Context;Landroid/support/v7/app/MediaRouteButton;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getMergedSelector()Landroid/support/v7/media/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteButton;->setRouteSelector(Landroid/support/v7/media/f;)V

    return-void
.end method
