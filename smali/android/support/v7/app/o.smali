.class public Landroid/support/v7/app/o;
.super Landroid/support/v4/app/q;
.source "MediaRouteChooserDialogFragment.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/support/v7/app/n;

.field private c:Landroid/support/v7/media/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/q;-><init>()V

    .line 34
    const-string v0, "selector"

    iput-object v0, p0, Landroid/support/v7/app/o;->a:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/o;->setCancelable(Z)V

    .line 47
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/media/f;

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/support/v7/app/o;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    const-string v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/f;->a(Landroid/os/Bundle;)Landroid/support/v7/media/f;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/media/f;

    .line 65
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/media/f;

    if-nez v0, :cond_1

    .line 66
    sget-object v0, Landroid/support/v7/media/f;->b:Landroid/support/v7/media/f;

    iput-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/media/f;

    .line 69
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/n;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Landroid/support/v7/app/n;

    invoke-direct {v0, p1}, Landroid/support/v7/app/n;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a()Landroid/support/v7/media/f;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v7/app/o;->b()V

    .line 56
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/media/f;

    return-object v0
.end method

.method public a(Landroid/support/v7/media/f;)V
    .locals 3

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/o;->b()V

    .line 83
    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/media/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iput-object p1, p0, Landroid/support/v7/app/o;->c:Landroid/support/v7/media/f;

    .line 86
    invoke-virtual {p0}, Landroid/support/v7/app/o;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    :cond_1
    const-string v1, "selector"

    invoke-virtual {p1}, Landroid/support/v7/media/f;->e()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0, v0}, Landroid/support/v7/app/o;->setArguments(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Landroid/support/v7/app/o;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/n;

    .line 94
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0, p1}, Landroid/support/v7/app/n;->a(Landroid/support/v7/media/f;)V

    .line 98
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/app/q;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/n;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/n;

    invoke-virtual {v0}, Landroid/support/v7/app/n;->b()V

    .line 124
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/support/v7/app/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/o;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/n;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/n;

    .line 114
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/n;

    invoke-virtual {p0}, Landroid/support/v7/app/o;->a()Landroid/support/v7/media/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/n;->a(Landroid/support/v7/media/f;)V

    .line 115
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/n;

    return-object v0
.end method
