.class public Lcom/flurry/sdk/ji;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ji$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:Z

.field b:J

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/jf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/flurry/sdk/ji;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ji;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ji;->c:Ljava/util/List;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ji;J)J
    .locals 1

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/flurry/sdk/ji;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ji;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/flurry/sdk/ji;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ji;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/flurry/sdk/ji;->a:Z

    return p1
.end method
