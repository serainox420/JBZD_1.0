.class public final Lcom/flurry/sdk/eu$2;
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
.field final synthetic a:Lcom/flurry/sdk/el;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/em$a;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/el;Ljava/lang/String;Lcom/flurry/sdk/em$a;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/flurry/sdk/eu$2;->a:Lcom/flurry/sdk/el;

    iput-object p2, p0, Lcom/flurry/sdk/eu$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/eu$2;->c:Lcom/flurry/sdk/em$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/flurry/sdk/em;

    invoke-direct {v0}, Lcom/flurry/sdk/em;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/eu$2;->a:Lcom/flurry/sdk/el;

    iget-object v2, p0, Lcom/flurry/sdk/eu$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/eu$2;->c:Lcom/flurry/sdk/em$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/em;->a(Lcom/flurry/sdk/el;Ljava/lang/String;Lcom/flurry/sdk/em$a;)V

    .line 30
    return-void
.end method
