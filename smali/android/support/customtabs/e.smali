.class public final Landroid/support/customtabs/e;
.super Ljava/lang/Object;
.source "CustomTabsSession.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/support/customtabs/h;

.field private final c:Landroid/support/customtabs/g;

.field private final d:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/customtabs/h;Landroid/support/customtabs/g;Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/customtabs/e;->a:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Landroid/support/customtabs/e;->b:Landroid/support/customtabs/h;

    .line 48
    iput-object p2, p0, Landroid/support/customtabs/e;->c:Landroid/support/customtabs/g;

    .line 49
    iput-object p3, p0, Landroid/support/customtabs/e;->d:Landroid/content/ComponentName;

    .line 50
    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/customtabs/e;->c:Landroid/support/customtabs/g;

    invoke-interface {v0}, Landroid/support/customtabs/g;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/e;->b:Landroid/support/customtabs/h;

    iget-object v1, p0, Landroid/support/customtabs/e;->c:Landroid/support/customtabs/g;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/customtabs/h;->a(Landroid/support/customtabs/g;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/customtabs/e;->d:Landroid/content/ComponentName;

    return-object v0
.end method
