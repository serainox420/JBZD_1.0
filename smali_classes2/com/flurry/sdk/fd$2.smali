.class final Lcom/flurry/sdk/fd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fd;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fd;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/flurry/sdk/fd$2;->a:Lcom/flurry/sdk/fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/fd$2;->a:Lcom/flurry/sdk/fd;

    invoke-static {v0}, Lcom/flurry/sdk/fd;->b(Lcom/flurry/sdk/fd;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 154
    sget-object v0, Lcom/flurry/sdk/ei;->m:Lcom/flurry/sdk/ei;

    iget-object v1, p0, Lcom/flurry/sdk/fd$2;->a:Lcom/flurry/sdk/fd;

    invoke-static {v1}, Lcom/flurry/sdk/fd;->a(Lcom/flurry/sdk/fd;)Lcom/flurry/sdk/ey;

    move-result-object v1

    .line 1152
    iget v1, v1, Lcom/flurry/sdk/ey;->e:I

    .line 154
    const-string v2, "Post cancelled."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    .line 155
    return-void
.end method
