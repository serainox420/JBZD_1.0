.class final Lcom/flurry/sdk/is$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/iq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/iq;

.field final synthetic b:Lcom/flurry/sdk/is;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/is;Lcom/flurry/sdk/iq;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/flurry/sdk/is$4;->b:Lcom/flurry/sdk/is;

    iput-object p2, p0, Lcom/flurry/sdk/is$4;->a:Lcom/flurry/sdk/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 218
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PulseCallbackReportInfo HTTP Response Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/is$4;->a:Lcom/flurry/sdk/iq;

    iget v2, v2, Lcom/flurry/sdk/iq;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/is$4;->a:Lcom/flurry/sdk/iq;

    .line 2080
    iget-object v2, v2, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 3038
    iget-object v2, v2, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 218
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 221
    return-void
.end method
