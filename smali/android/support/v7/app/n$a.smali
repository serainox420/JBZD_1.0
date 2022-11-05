.class final Landroid/support/v7/app/n$a;
.super Landroid/support/v7/media/g$a;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/n;


# direct methods
.method constructor <init>(Landroid/support/v7/app/n;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Landroid/support/v7/app/n$a;->a:Landroid/support/v7/app/n;

    invoke-direct {p0}, Landroid/support/v7/media/g$a;-><init>()V

    .line 358
    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v7/app/n$a;->a:Landroid/support/v7/app/n;

    invoke-virtual {v0}, Landroid/support/v7/app/n;->c()V

    .line 363
    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/v7/app/n$a;->a:Landroid/support/v7/app/n;

    invoke-virtual {v0}, Landroid/support/v7/app/n;->c()V

    .line 373
    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v7/app/n$a;->a:Landroid/support/v7/app/n;

    invoke-virtual {v0}, Landroid/support/v7/app/n;->c()V

    .line 368
    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v7/app/n$a;->a:Landroid/support/v7/app/n;

    invoke-virtual {v0}, Landroid/support/v7/app/n;->dismiss()V

    .line 378
    return-void
.end method
