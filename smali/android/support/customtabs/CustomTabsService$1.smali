.class Landroid/support/customtabs/CustomTabsService$1;
.super Landroid/support/customtabs/h$a;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsService;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-direct {p0}, Landroid/support/customtabs/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/customtabs/g;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/f;

    invoke-direct {v1, p1}, Landroid/support/customtabs/f;-><init>(Landroid/support/customtabs/g;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/customtabs/CustomTabsService;->a(Landroid/support/customtabs/f;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsService;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsService;->a(J)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/customtabs/g;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 92
    new-instance v1, Landroid/support/customtabs/f;

    invoke-direct {v1, p1}, Landroid/support/customtabs/f;-><init>(Landroid/support/customtabs/g;)V

    .line 94
    :try_start_0
    new-instance v2, Landroid/support/customtabs/CustomTabsService$1$1;

    invoke-direct {v2, p0, v1}, Landroid/support/customtabs/CustomTabsService$1$1;-><init>(Landroid/support/customtabs/CustomTabsService$1;Landroid/support/customtabs/f;)V

    .line 100
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v3}, Landroid/support/customtabs/CustomTabsService;->a(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    invoke-interface {p1}, Landroid/support/customtabs/g;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 102
    iget-object v4, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v4}, Landroid/support/customtabs/CustomTabsService;->a(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Landroid/support/customtabs/g;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    iget-object v2, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v2, v1}, Landroid/support/customtabs/CustomTabsService;->b(Landroid/support/customtabs/f;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 103
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Landroid/support/customtabs/g;Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/f;

    invoke-direct {v1, p1}, Landroid/support/customtabs/f;-><init>(Landroid/support/customtabs/g;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/customtabs/CustomTabsService;->a(Landroid/support/customtabs/f;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/customtabs/g;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/g;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/f;

    invoke-direct {v1, p1}, Landroid/support/customtabs/f;-><init>(Landroid/support/customtabs/g;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/customtabs/CustomTabsService;->a(Landroid/support/customtabs/f;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/customtabs/g;Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/f;

    invoke-direct {v1, p1}, Landroid/support/customtabs/f;-><init>(Landroid/support/customtabs/g;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/customtabs/CustomTabsService;->a(Landroid/support/customtabs/f;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
