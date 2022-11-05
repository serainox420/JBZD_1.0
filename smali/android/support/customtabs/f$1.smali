.class Landroid/support/customtabs/f$1;
.super Landroid/support/customtabs/a;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/f;-><init>(Landroid/support/customtabs/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/customtabs/f;


# direct methods
.method constructor <init>(Landroid/support/customtabs/f;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Landroid/support/customtabs/f$1;->a:Landroid/support/customtabs/f;

    invoke-direct {p0}, Landroid/support/customtabs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/f$1;->a:Landroid/support/customtabs/f;

    invoke-static {v0}, Landroid/support/customtabs/f;->a(Landroid/support/customtabs/f;)Landroid/support/customtabs/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/g;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v0, "CustomTabsSessionToken"

    const-string v1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/f$1;->a:Landroid/support/customtabs/f;

    invoke-static {v0}, Landroid/support/customtabs/f;->a(Landroid/support/customtabs/f;)Landroid/support/customtabs/g;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/customtabs/g;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v0, "CustomTabsSessionToken"

    const-string v1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/f$1;->a:Landroid/support/customtabs/f;

    invoke-static {v0}, Landroid/support/customtabs/f;->a(Landroid/support/customtabs/f;)Landroid/support/customtabs/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/g;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v0, "CustomTabsSessionToken"

    const-string v1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/f$1;->a:Landroid/support/customtabs/f;

    invoke-static {v0}, Landroid/support/customtabs/f;->a(Landroid/support/customtabs/f;)Landroid/support/customtabs/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/g;->b(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v0, "CustomTabsSessionToken"

    const-string v1, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
