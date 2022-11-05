.class public final Lcom/flurry/sdk/ga$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/ga;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/flurry/sdk/ga;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ga;-><init>(B)V

    iput-object v0, p0, Lcom/flurry/sdk/ga$a;->a:Lcom/flurry/sdk/ga;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/flurry/sdk/ga$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/flurry/sdk/ga$a;->a:Lcom/flurry/sdk/ga;

    .line 1003
    iput-object p1, v0, Lcom/flurry/sdk/ga;->a:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/flurry/sdk/ga$a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flurry/sdk/ga$a;->a:Lcom/flurry/sdk/ga;

    .line 2003
    iput-object p1, v0, Lcom/flurry/sdk/ga;->b:Ljava/lang/String;

    .line 35
    return-object p0
.end method
