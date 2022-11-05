.class Lcom/adcolony/sdk/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/ca$b;,
        Lcom/adcolony/sdk/ca$c;,
        Lcom/adcolony/sdk/ca$a;,
        Lcom/adcolony/sdk/ca$d;
    }
.end annotation


# instance fields
.field private a:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

.field private b:Lcom/adcolony/sdk/ca$d;

.field private c:Lcom/adcolony/sdk/ca$a;

.field private d:Lcom/adcolony/sdk/cm;

.field private e:Lcom/adcolony/sdk/cn;

.field private f:Lcom/adcolony/sdk/by;

.field private g:Lcom/adcolony/sdk/ca$c;

.field private h:Lcom/adcolony/sdk/bu;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/adcolony/sdk/ca;->a:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    .line 46
    new-instance v0, Lcom/adcolony/sdk/ca$d;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/ca$d;-><init>(Lcom/adcolony/sdk/ca;Lcom/adcolony/sdk/ca$1;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ca;->b:Lcom/adcolony/sdk/ca$d;

    .line 47
    new-instance v0, Lcom/adcolony/sdk/ca$a;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/ca$a;-><init>(Lcom/adcolony/sdk/ca;Lcom/adcolony/sdk/ca$1;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ca;->c:Lcom/adcolony/sdk/ca$a;

    .line 48
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ca;->e:Lcom/adcolony/sdk/cn;

    .line 49
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ca;->f:Lcom/adcolony/sdk/by;

    .line 50
    new-instance v0, Lcom/adcolony/sdk/ca$c;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ca$c;-><init>(Lcom/adcolony/sdk/ca;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ca;->g:Lcom/adcolony/sdk/ca$c;

    .line 51
    new-instance v0, Lcom/adcolony/sdk/bu;

    invoke-direct {v0}, Lcom/adcolony/sdk/bu;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ca;->h:Lcom/adcolony/sdk/bu;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/ca;Lcom/adcolony/sdk/cm;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/ca;->b(Lcom/adcolony/sdk/cm;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/adcolony/sdk/cm;)Landroid/view/animation/Animation;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/adcolony/sdk/cm;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/cm;->g(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/adcolony/sdk/cm;->h()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 111
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 112
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 113
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 114
    new-instance v1, Lcom/adcolony/sdk/ca$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ca$1;-><init>(Lcom/adcolony/sdk/ca;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->e:Lcom/adcolony/sdk/cn;

    return-object v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/ca;Lcom/adcolony/sdk/cm;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/cm;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/adcolony/sdk/cm;)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/adcolony/sdk/cm;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/cm;->a(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Lcom/adcolony/sdk/cm;->f()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 137
    new-instance v1, Lcom/adcolony/sdk/ca$2;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/ca$2;-><init>(Lcom/adcolony/sdk/ca;Lcom/adcolony/sdk/cm;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->g:Lcom/adcolony/sdk/ca$c;

    return-object v0
.end method

.method static synthetic c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->f:Lcom/adcolony/sdk/by;

    return-object v0
.end method

.method static synthetic d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->d:Lcom/adcolony/sdk/cm;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method static synthetic e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->a:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->b:Lcom/adcolony/sdk/ca$d;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->b:Lcom/adcolony/sdk/ca$d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$d;->c()V

    .line 101
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/bu;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->h:Lcom/adcolony/sdk/bu;

    return-object v0
.end method

.method static synthetic g(Lcom/adcolony/sdk/ca;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/adcolony/sdk/ca;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->c:Lcom/adcolony/sdk/ca$a;

    return-object v0
.end method

.method static synthetic i(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$d;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->b:Lcom/adcolony/sdk/ca$d;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/adcolony/sdk/ca;->b()V

    .line 87
    invoke-direct {p0}, Lcom/adcolony/sdk/ca;->e()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/ca;->a:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    .line 89
    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;)V
    .locals 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adcolony/sdk/ca;->a:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    .line 66
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->e:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->m()Lcom/adcolony/sdk/cm;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ca;->d:Lcom/adcolony/sdk/cm;

    .line 67
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->b:Lcom/adcolony/sdk/ca$d;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/adcolony/sdk/ca$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/ca$d;-><init>(Lcom/adcolony/sdk/ca;Lcom/adcolony/sdk/ca$1;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ca;->b:Lcom/adcolony/sdk/ca$d;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->b:Lcom/adcolony/sdk/ca$d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$d;->a()V

    .line 71
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->b:Lcom/adcolony/sdk/ca$d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$d;->b()V

    .line 72
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->b:Lcom/adcolony/sdk/ca$d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$d;->d()V

    .line 73
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->c:Lcom/adcolony/sdk/ca$a;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->c:Lcom/adcolony/sdk/ca$a;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$a;->a()V

    .line 95
    :cond_0
    return-void
.end method

.method b(Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;)V
    .locals 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/adcolony/sdk/ca;->a:Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    .line 77
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->e:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->m()Lcom/adcolony/sdk/cm;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ca;->d:Lcom/adcolony/sdk/cm;

    .line 78
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->c:Lcom/adcolony/sdk/ca$a;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/adcolony/sdk/ca$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/ca$a;-><init>(Lcom/adcolony/sdk/ca;Lcom/adcolony/sdk/ca$1;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ca;->c:Lcom/adcolony/sdk/ca$a;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->c:Lcom/adcolony/sdk/ca$a;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$a;->b()V

    .line 82
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->c:Lcom/adcolony/sdk/ca$a;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$a;->c()V

    .line 83
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adcolony/sdk/ca;->f:Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/ca;->g:Lcom/adcolony/sdk/ca$c;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 105
    return-void
.end method
