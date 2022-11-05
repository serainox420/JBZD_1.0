.class final Lcom/flurry/sdk/dv$10;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/dv;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/flurry/sdk/dv$10;->a:Lcom/flurry/sdk/dv;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 426
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/dv;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skip timer expired. Start streaming now."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/flurry/sdk/dv$10;->a:Lcom/flurry/sdk/dv;

    invoke-static {v0}, Lcom/flurry/sdk/dv;->j(Lcom/flurry/sdk/dv;)V

    .line 428
    return-void
.end method
