.class final Lcom/flurry/sdk/fd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ho;

.field final synthetic b:Lcom/flurry/sdk/fd;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fd;Lcom/flurry/sdk/ho;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/flurry/sdk/fd$1;->b:Lcom/flurry/sdk/fd;

    iput-object p2, p0, Lcom/flurry/sdk/fd$1;->a:Lcom/flurry/sdk/ho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 107
    sget-object v0, Lcom/flurry/sdk/ei;->m:Lcom/flurry/sdk/ei;

    iget-object v1, p0, Lcom/flurry/sdk/fd$1;->b:Lcom/flurry/sdk/fd;

    invoke-static {v1}, Lcom/flurry/sdk/fd;->a(Lcom/flurry/sdk/fd;)Lcom/flurry/sdk/ey;

    move-result-object v1

    .line 1152
    iget v1, v1, Lcom/flurry/sdk/ey;->e:I

    .line 107
    const-string v2, "Post cancelled"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/fd$1;->a:Lcom/flurry/sdk/ho;

    invoke-interface {v0}, Lcom/flurry/sdk/ho;->a()V

    .line 109
    return-void
.end method
