.class public abstract Lcom/apprupt/sdk/CvAdWrapper;
.super Ljava/lang/Object;
.source "CvAdWrapper.java"

# interfaces
.implements Lcom/apprupt/sdk/mediation/AdWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvAdWrapper$Fallback;,
        Lcom/apprupt/sdk/CvAdWrapper$Error;
    }
.end annotation


# instance fields
.field protected a:Lcom/apprupt/sdk/Logger$log;

.field private b:Lcom/apprupt/sdk/CvMediator;

.field private final c:Lcom/apprupt/sdk/mediation/Adapter;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Lcom/apprupt/sdk/mediation/Size;

.field private volatile g:Lcom/apprupt/sdk/CvAdType;

.field private volatile h:Ljava/lang/String;

.field private volatile i:J

.field private final j:Z

.field private k:Lcom/apprupt/sdk/Q$Task;

.field private l:Lcom/apprupt/sdk/Q$Task;

.field private m:Lcom/apprupt/sdk/Q$Task;

.field private n:Lcom/apprupt/sdk/Q$Task;

.field private o:Lcom/apprupt/sdk/Q$Task;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/CvMediator;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->a:Lcom/apprupt/sdk/Logger$log;

    .line 19
    iput-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper;->d:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper;->e:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/apprupt/sdk/mediation/Size;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/mediation/Size;-><init>(II)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->f:Lcom/apprupt/sdk/mediation/Size;

    .line 22
    sget-object v0, Lcom/apprupt/sdk/CvAdType;->a:Lcom/apprupt/sdk/CvAdType;

    iput-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->g:Lcom/apprupt/sdk/CvAdType;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->h:Ljava/lang/String;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->i:J

    .line 92
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$4;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvAdWrapper$4;-><init>(Lcom/apprupt/sdk/CvAdWrapper;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->k:Lcom/apprupt/sdk/Q$Task;

    .line 104
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$5;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvAdWrapper$5;-><init>(Lcom/apprupt/sdk/CvAdWrapper;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->l:Lcom/apprupt/sdk/Q$Task;

    .line 130
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$6;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvAdWrapper$6;-><init>(Lcom/apprupt/sdk/CvAdWrapper;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->m:Lcom/apprupt/sdk/Q$Task;

    .line 180
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$7;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvAdWrapper$7;-><init>(Lcom/apprupt/sdk/CvAdWrapper;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->n:Lcom/apprupt/sdk/Q$Task;

    .line 197
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$8;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvAdWrapper$8;-><init>(Lcom/apprupt/sdk/CvAdWrapper;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->o:Lcom/apprupt/sdk/Q$Task;

    .line 29
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper;->c:Lcom/apprupt/sdk/mediation/Adapter;

    .line 30
    iput-object p2, p0, Lcom/apprupt/sdk/CvAdWrapper;->b:Lcom/apprupt/sdk/CvMediator;

    .line 31
    invoke-virtual {p2}, Lcom/apprupt/sdk/CvMediator;->a()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/apprupt/sdk/CvContentOptions;->g:Z

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->j:Z

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvAdWrapper;J)J
    .locals 1

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/apprupt/sdk/CvAdWrapper;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvAdWrapper;Lcom/apprupt/sdk/CvAdType;)Lcom/apprupt/sdk/CvAdType;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper;->g:Lcom/apprupt/sdk/CvAdType;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvAdWrapper;)Lcom/apprupt/sdk/CvMediator;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->b:Lcom/apprupt/sdk/CvMediator;

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvAdWrapper;Lcom/apprupt/sdk/mediation/Size;)Lcom/apprupt/sdk/mediation/Size;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper;->f:Lcom/apprupt/sdk/mediation/Size;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvAdWrapper;Lcom/apprupt/sdk/SimpleJSON;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/SimpleJSON;)V

    return-void
.end method

.method private a(Lcom/apprupt/sdk/SimpleJSON;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->l:Lcom/apprupt/sdk/Q$Task;

    invoke-static {v0}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper;->k:Lcom/apprupt/sdk/Q$Task;

    .line 65
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper;->m:Lcom/apprupt/sdk/Q$Task;

    .line 66
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper;->n:Lcom/apprupt/sdk/Q$Task;

    .line 67
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper;->o:Lcom/apprupt/sdk/Q$Task;

    .line 68
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/Q;->b(Ljava/lang/Object;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvAdWrapper$3;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvAdWrapper$3;-><init>(Lcom/apprupt/sdk/CvAdWrapper;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$SuccessHandler;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvAdWrapper$2;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvAdWrapper$2;-><init>(Lcom/apprupt/sdk/CvAdWrapper;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$FailureHandler;)Lcom/apprupt/sdk/Q;

    .line 90
    return-void
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvAdWrapper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvAdWrapper;)J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->i:J

    return-wide v0
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper;->h:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/mediation/Mediator;)V
    .locals 0

    .prologue
    .line 270
    check-cast p1, Lcom/apprupt/sdk/CvMediator;

    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper;->b:Lcom/apprupt/sdk/CvMediator;

    .line 271
    return-void
.end method

.method abstract a(Lcom/apprupt/sdk/mediation/Size;)V
.end method

.method b(Lcom/apprupt/sdk/mediation/Size;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper;->f:Lcom/apprupt/sdk/mediation/Size;

    .line 228
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/apprupt/sdk/mediation/Adapter;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->c:Lcom/apprupt/sdk/mediation/Adapter;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->j:Z

    return v0
.end method

.method k()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->a:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Loading ad..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->a:Lcom/apprupt/sdk/CvContentManager;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper;->b:Lcom/apprupt/sdk/CvMediator;

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvMediator;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvAdWrapper;->b:Lcom/apprupt/sdk/CvMediator;

    invoke-virtual {v2}, Lcom/apprupt/sdk/CvMediator;->a()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v2

    new-instance v3, Lcom/apprupt/sdk/CvAdWrapper$1;

    invoke-direct {v3, p0}, Lcom/apprupt/sdk/CvAdWrapper$1;-><init>(Lcom/apprupt/sdk/CvAdWrapper;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/apprupt/sdk/CvContentManager;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$ContentListener;)Lcom/apprupt/sdk/CvContentManager$ContentLoader;

    .line 60
    return-void
.end method

.method abstract l()V
.end method

.method m()Lcom/apprupt/sdk/CvMediator;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->b:Lcom/apprupt/sdk/CvMediator;

    return-object v0
.end method

.method n()Lcom/apprupt/sdk/mediation/Size;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->f:Lcom/apprupt/sdk/mediation/Size;

    return-object v0
.end method

.method o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper;->h:Ljava/lang/String;

    return-object v0
.end method
