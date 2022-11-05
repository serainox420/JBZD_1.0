.class Lcom/apprupt/sdk/CvLauncher$1;
.super Ljava/lang/Object;
.source "CvLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvLauncher;->d(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/apprupt/sdk/CvLauncher;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvLauncher;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/apprupt/sdk/CvLauncher$1;->b:Lcom/apprupt/sdk/CvLauncher;

    iput-object p2, p0, Lcom/apprupt/sdk/CvLauncher$1;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 208
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/apprupt/sdk/CvLauncher$1;->b:Lcom/apprupt/sdk/CvLauncher;

    iget-object v1, p0, Lcom/apprupt/sdk/CvLauncher$1;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvLauncher;->a(Lcom/apprupt/sdk/CvLauncher;Landroid/net/Uri;)Z

    .line 211
    :cond_0
    return-void
.end method
