.class public abstract Landroid/support/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "CustomTabsService.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/customtabs/h$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsService;->a:Ljava/util/Map;

    .line 83
    new-instance v0, Landroid/support/customtabs/CustomTabsService$1;

    invoke-direct {v0, p0}, Landroid/support/customtabs/CustomTabsService$1;-><init>(Landroid/support/customtabs/CustomTabsService;)V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsService;->b:Landroid/support/customtabs/h$a;

    return-void
.end method

.method static synthetic a(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/support/customtabs/f;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method protected abstract a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected abstract a(J)Z
.end method

.method protected a(Landroid/support/customtabs/f;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 158
    :try_start_0
    iget-object v2, p0, Landroid/support/customtabs/CustomTabsService;->a:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    invoke-virtual {p1}, Landroid/support/customtabs/f;->a()Landroid/os/IBinder;

    move-result-object v3

    .line 160
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService;->a:Ljava/util/Map;

    .line 161
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    .line 162
    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 163
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    monitor-exit v2

    .line 168
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    :catch_0
    move-exception v0

    move v0, v1

    .line 166
    goto :goto_0
.end method

.method protected abstract a(Landroid/support/customtabs/f;Landroid/net/Uri;)Z
.end method

.method protected abstract a(Landroid/support/customtabs/f;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/f;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract a(Landroid/support/customtabs/f;Landroid/os/Bundle;)Z
.end method

.method protected abstract b(Landroid/support/customtabs/f;)Z
.end method
