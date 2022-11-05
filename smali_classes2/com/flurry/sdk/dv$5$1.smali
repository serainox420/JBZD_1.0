.class final Lcom/flurry/sdk/dv$5$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dv$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ae;

.field final synthetic b:Lcom/flurry/sdk/dv$5;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dv$5;Lcom/flurry/sdk/ae;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/flurry/sdk/dv$5$1;->b:Lcom/flurry/sdk/dv$5;

    iput-object p2, p0, Lcom/flurry/sdk/dv$5$1;->a:Lcom/flurry/sdk/ae;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/flurry/sdk/dv$5$1;->b:Lcom/flurry/sdk/dv$5;

    iget-object v0, v0, Lcom/flurry/sdk/dv$5;->a:Lcom/flurry/sdk/dv;

    iget-object v1, p0, Lcom/flurry/sdk/dv$5$1;->a:Lcom/flurry/sdk/ae;

    iget-object v1, v1, Lcom/flurry/sdk/ae;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/dv$5$1;->a:Lcom/flurry/sdk/ae;

    iget-object v2, v2, Lcom/flurry/sdk/ae;->b:Lcom/flurry/sdk/al;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv;Ljava/lang/String;Lcom/flurry/sdk/al;)V

    .line 133
    return-void
.end method
