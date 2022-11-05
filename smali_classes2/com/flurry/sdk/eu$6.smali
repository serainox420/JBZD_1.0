.class final Lcom/flurry/sdk/eu$6;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/eo$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/eo$a;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/flurry/sdk/eu$6;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/eu$6;->b:Lcom/flurry/sdk/eo$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/flurry/sdk/eo;

    invoke-direct {v0}, Lcom/flurry/sdk/eo;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/eu$6;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/sdk/ef;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/sdk/eu$6;->b:Lcom/flurry/sdk/eo$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/eo;->a(Ljava/lang/String;ILcom/flurry/sdk/eo$a;)V

    .line 72
    return-void
.end method
