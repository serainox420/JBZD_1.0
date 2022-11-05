.class public final Lcom/flurry/sdk/fz$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/fz;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/flurry/sdk/fz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fz;-><init>(B)V

    iput-object v0, p0, Lcom/flurry/sdk/fz$a;->a:Lcom/flurry/sdk/fz;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/fz$a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/sdk/fz$a;->a:Lcom/flurry/sdk/fz;

    .line 2003
    iput p1, v0, Lcom/flurry/sdk/fz;->b:I

    .line 43
    return-object p0
.end method

.method public final a(Lcom/flurry/sdk/gb;)Lcom/flurry/sdk/fz$a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/fz$a;->a:Lcom/flurry/sdk/fz;

    .line 3003
    iput-object p1, v0, Lcom/flurry/sdk/fz;->c:Lcom/flurry/sdk/gb;

    .line 47
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/flurry/sdk/fz$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/fz$a;->a:Lcom/flurry/sdk/fz;

    .line 1003
    iput-object p1, v0, Lcom/flurry/sdk/fz;->a:Ljava/lang/String;

    .line 39
    return-object p0
.end method
