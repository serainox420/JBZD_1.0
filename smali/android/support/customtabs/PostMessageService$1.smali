.class Landroid/support/customtabs/PostMessageService$1;
.super Landroid/support/customtabs/i$a;
.source "PostMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/PostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/customtabs/PostMessageService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/PostMessageService;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Landroid/support/customtabs/PostMessageService$1;->a:Landroid/support/customtabs/PostMessageService;

    invoke-direct {p0}, Landroid/support/customtabs/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/customtabs/g;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-interface {p1, p2}, Landroid/support/customtabs/g;->a(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public a(Landroid/support/customtabs/g;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-interface {p1, p2, p3}, Landroid/support/customtabs/g;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 41
    return-void
.end method
