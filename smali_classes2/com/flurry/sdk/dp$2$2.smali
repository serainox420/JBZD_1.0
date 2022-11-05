.class final Lcom/flurry/sdk/dp$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dp$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ks;

.field final synthetic b:Lcom/flurry/sdk/dp$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dp$2;Lcom/flurry/sdk/ks;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/flurry/sdk/dp$2$2;->b:Lcom/flurry/sdk/dp$2;

    iput-object p2, p0, Lcom/flurry/sdk/dp$2$2;->a:Lcom/flurry/sdk/ks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ADS AR HTTP Response Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/dp$2$2;->a:Lcom/flurry/sdk/ks;

    .line 1220
    iget v2, v2, Lcom/flurry/sdk/ku;->p:I

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/dp$2$2;->a:Lcom/flurry/sdk/ks;

    .line 2140
    iget-object v2, v2, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 103
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    return-void
.end method
