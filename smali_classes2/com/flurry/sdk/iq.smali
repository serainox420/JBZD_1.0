.class public Lcom/flurry/sdk/iq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/iq$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Z

.field public e:I

.field public f:Lcom/flurry/sdk/ir;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:J

.field public j:Z

.field public k:J

.field public l:Lcom/flurry/sdk/ip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/sdk/iq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/iq;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/ip;JJI)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/iq;->k:J

    .line 33
    iput-object p1, p0, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 34
    iput-wide p2, p0, Lcom/flurry/sdk/iq;->b:J

    .line 35
    iput-wide p4, p0, Lcom/flurry/sdk/iq;->c:J

    .line 36
    iput p6, p0, Lcom/flurry/sdk/iq;->a:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/iq;->e:I

    .line 39
    sget-object v0, Lcom/flurry/sdk/ir;->d:Lcom/flurry/sdk/ir;

    iput-object v0, p0, Lcom/flurry/sdk/iq;->f:Lcom/flurry/sdk/ir;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 1147
    iget-object v0, v0, Lcom/flurry/sdk/ip;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-boolean v0, p0, Lcom/flurry/sdk/iq;->d:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 2131
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/ip;->l:Z

    .line 49
    :cond_0
    return-void
.end method
