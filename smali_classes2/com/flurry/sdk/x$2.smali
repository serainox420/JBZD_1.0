.class final Lcom/flurry/sdk/x$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kh",
        "<",
        "Lcom/flurry/sdk/n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/x;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/x;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/flurry/sdk/x$2;->a:Lcom/flurry/sdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 3

    .prologue
    .line 152
    check-cast p1, Lcom/flurry/sdk/n;

    .line 1155
    iget v0, p1, Lcom/flurry/sdk/n;->b:I

    iget-object v1, p0, Lcom/flurry/sdk/x$2;->a:Lcom/flurry/sdk/x;

    .line 2171
    iget v1, v1, Lcom/flurry/sdk/o;->b:I

    .line 1155
    if-ne v0, v1, :cond_0

    .line 1159
    iget-object v0, p1, Lcom/flurry/sdk/n;->a:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p1, Lcom/flurry/sdk/n;->c:Lcom/flurry/sdk/n$a;

    .line 3023
    iget v0, v0, Lcom/flurry/sdk/n$a;->c:I

    .line 1164
    sget-object v1, Lcom/flurry/sdk/n$a;->b:Lcom/flurry/sdk/n$a;

    .line 4023
    iget v1, v1, Lcom/flurry/sdk/n$a;->c:I

    .line 1164
    if-ne v0, v1, :cond_1

    .line 1165
    iget-object v0, p1, Lcom/flurry/sdk/n;->a:Landroid/widget/Button;

    sget-object v1, Lcom/flurry/sdk/n$a;->b:Lcom/flurry/sdk/n$a;

    .line 5023
    iget v1, v1, Lcom/flurry/sdk/n$a;->c:I

    .line 1165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1171
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/x$2;->a:Lcom/flurry/sdk/x;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p1, Lcom/flurry/sdk/n;->a:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/flurry/sdk/x;->a(Lcom/flurry/sdk/x;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1172
    iget-object v0, p0, Lcom/flurry/sdk/x$2;->a:Lcom/flurry/sdk/x;

    iget-object v1, p0, Lcom/flurry/sdk/x$2;->a:Lcom/flurry/sdk/x;

    invoke-static {v1}, Lcom/flurry/sdk/x;->h(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x;->a(Ljava/lang/ref/WeakReference;)V

    .line 152
    :cond_0
    return-void

    .line 1168
    :cond_1
    iget-object v0, p1, Lcom/flurry/sdk/n;->a:Landroid/widget/Button;

    sget-object v1, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n$a;

    .line 6023
    iget v1, v1, Lcom/flurry/sdk/n$a;->c:I

    .line 1168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
