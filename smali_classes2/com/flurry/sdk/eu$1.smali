.class public final Lcom/flurry/sdk/eu$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/es$a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/es$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/flurry/sdk/eu$1;->a:Lcom/flurry/sdk/es$a;

    iput-object p2, p0, Lcom/flurry/sdk/eu$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/flurry/sdk/es;

    invoke-direct {v0}, Lcom/flurry/sdk/es;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/eu$1;->a:Lcom/flurry/sdk/es$a;

    iget-object v2, p0, Lcom/flurry/sdk/eu$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/es$a;Ljava/lang/String;)V

    .line 20
    return-void
.end method
