.class public final Lcom/flurry/sdk/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bf$a;,
        Lcom/flurry/sdk/bf$b;
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/da;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:J

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/flurry/sdk/bf;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/cz;)V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iget-object v0, p1, Lcom/flurry/sdk/cz;->a:Lcom/flurry/sdk/da;

    iput-object v0, p0, Lcom/flurry/sdk/bf;->a:Lcom/flurry/sdk/da;

    .line 148
    iget-object v0, p1, Lcom/flurry/sdk/cz;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    .line 149
    iget-wide v0, p1, Lcom/flurry/sdk/cz;->c:J

    iput-wide v0, p0, Lcom/flurry/sdk/bf;->c:J

    .line 150
    iget-wide v0, p1, Lcom/flurry/sdk/cz;->d:J

    iput-wide v0, p0, Lcom/flurry/sdk/bf;->d:J

    .line 151
    iget-wide v0, p1, Lcom/flurry/sdk/cz;->e:J

    iput-wide v0, p0, Lcom/flurry/sdk/bf;->e:J

    .line 152
    iget v0, p1, Lcom/flurry/sdk/cz;->f:I

    iput v0, p0, Lcom/flurry/sdk/bf;->f:I

    .line 153
    iget v0, p1, Lcom/flurry/sdk/cz;->g:I

    iput v0, p0, Lcom/flurry/sdk/bf;->g:I

    .line 154
    iget v0, p1, Lcom/flurry/sdk/cz;->h:I

    iput v0, p0, Lcom/flurry/sdk/bf;->h:I

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/bf;->i:I

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/bf;->j:J

    .line 158
    return-void
.end method
