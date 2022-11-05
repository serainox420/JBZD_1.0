.class public abstract Lcom/flurry/sdk/kw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public n:J

.field public o:Z

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/flurry/sdk/kw;->s:I

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flurry/sdk/kw;->q:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/flurry/sdk/kw;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/kw;->p:I

    .line 55
    return-void
.end method
