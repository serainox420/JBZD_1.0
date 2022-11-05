.class Lcom/apprupt/sdk/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/apprupt/sdk/Launcher;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 114
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/apprupt/sdk/Launcher$1;->b:Lcom/apprupt/sdk/Launcher;

    iget-object v1, p0, Lcom/apprupt/sdk/Launcher$1;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/Launcher;->a(Lcom/apprupt/sdk/Launcher;Landroid/net/Uri;)Z

    .line 117
    :cond_0
    return-void
.end method
