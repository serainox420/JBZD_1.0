.class abstract Landroid/support/transition/y;
.super Ljava/lang/Object;
.source "TransitionPort.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/y$a;,
        Landroid/support/transition/y$c;,
        Landroid/support/transition/y$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/f/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/y$a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/support/transition/af;

.field d:J

.field e:J

.field f:Landroid/animation/TimeInterpolator;

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field o:Landroid/support/transition/ad;

.field p:Landroid/view/ViewGroup;

.field q:Z

.field r:I

.field s:Z

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/y$b;",
            ">;"
        }
    .end annotation
.end field

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/support/transition/af;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/y;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide v4, p0, Landroid/support/transition/y;->d:J

    .line 52
    iput-wide v4, p0, Landroid/support/transition/y;->e:J

    .line 54
    iput-object v1, p0, Landroid/support/transition/y;->f:Landroid/animation/TimeInterpolator;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    .line 60
    iput-object v1, p0, Landroid/support/transition/y;->i:Ljava/util/ArrayList;

    .line 62
    iput-object v1, p0, Landroid/support/transition/y;->j:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    .line 66
    iput-object v1, p0, Landroid/support/transition/y;->l:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Landroid/support/transition/y;->m:Ljava/util/ArrayList;

    .line 70
    iput-object v1, p0, Landroid/support/transition/y;->n:Ljava/util/ArrayList;

    .line 72
    iput-object v1, p0, Landroid/support/transition/y;->o:Landroid/support/transition/ad;

    .line 75
    iput-object v1, p0, Landroid/support/transition/y;->p:Landroid/view/ViewGroup;

    .line 83
    iput-boolean v2, p0, Landroid/support/transition/y;->q:Z

    .line 87
    iput v2, p0, Landroid/support/transition/y;->r:I

    .line 90
    iput-boolean v2, p0, Landroid/support/transition/y;->s:Z

    .line 93
    iput-object v1, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->u:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/y;->b:Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/support/transition/af;

    invoke-direct {v0}, Landroid/support/transition/af;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    .line 104
    new-instance v0, Landroid/support/transition/af;

    invoke-direct {v0}, Landroid/support/transition/af;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->v:Ljava/util/ArrayList;

    .line 113
    iput-boolean v2, p0, Landroid/support/transition/y;->x:Z

    .line 122
    return-void
.end method

.method private a(Landroid/animation/Animator;Landroid/support/v4/f/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/f/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/y$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    if-eqz p1, :cond_0

    .line 442
    new-instance v0, Landroid/support/transition/y$1;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/y$1;-><init>(Landroid/support/transition/y;Landroid/support/v4/f/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 454
    invoke-virtual {p0, p1}, Landroid/support/transition/y;->a(Landroid/animation/Animator;)V

    .line 456
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 687
    if-nez p1, :cond_1

    .line 769
    :cond_0
    return-void

    .line 691
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_f

    .line 692
    const/4 v0, 0x1

    move v6, v0

    .line 694
    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    :cond_2
    const/4 v2, -0x1

    .line 699
    const-wide/16 v0, -0x1

    .line 700
    if-nez v6, :cond_5

    .line 701
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    move-wide v8, v0

    move v1, v2

    move-wide v2, v8

    .line 708
    :goto_1
    iget-object v0, p0, Landroid/support/transition/y;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/y;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    :cond_3
    iget-object v0, p0, Landroid/support/transition/y;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/transition/y;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    :cond_4
    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 715
    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v4

    .line 716
    :goto_2
    if-ge v5, v7, :cond_6

    .line 717
    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 703
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 704
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 705
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    move-wide v8, v0

    move v1, v2

    move-wide v2, v8

    goto :goto_1

    .line 722
    :cond_6
    new-instance v0, Landroid/support/transition/ae;

    invoke-direct {v0}, Landroid/support/transition/ae;-><init>()V

    .line 723
    iput-object p1, v0, Landroid/support/transition/ae;->b:Landroid/view/View;

    .line 724
    if-eqz p2, :cond_a

    .line 725
    invoke-virtual {p0, v0}, Landroid/support/transition/y;->a(Landroid/support/transition/ae;)V

    .line 729
    :goto_3
    if-eqz p2, :cond_c

    .line 730
    if-nez v6, :cond_b

    .line 731
    iget-object v2, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v2, v2, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    if-ltz v1, :cond_7

    .line 733
    iget-object v2, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v2, v2, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 748
    :cond_7
    :goto_4
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Landroid/support/transition/y;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/transition/y;->l:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    :cond_8
    iget-object v0, p0, Landroid/support/transition/y;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/transition/y;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    :cond_9
    iget-object v0, p0, Landroid/support/transition/y;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 757
    iget-object v0, p0, Landroid/support/transition/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v4

    .line 758
    :goto_5
    if-ge v1, v2, :cond_e

    .line 759
    iget-object v0, p0, Landroid/support/transition/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 727
    :cond_a
    invoke-virtual {p0, v0}, Landroid/support/transition/y;->b(Landroid/support/transition/ae;)V

    goto :goto_3

    .line 736
    :cond_b
    iget-object v5, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v5, v5, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v5, v2, v3, v0}, Landroid/support/v4/f/f;->b(JLjava/lang/Object;)V

    goto :goto_4

    .line 739
    :cond_c
    if-nez v6, :cond_d

    .line 740
    iget-object v2, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v2, v2, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    if-ltz v1, :cond_7

    .line 742
    iget-object v2, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v2, v2, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 745
    :cond_d
    iget-object v5, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v5, v5, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v5, v2, v3, v0}, Landroid/support/v4/f/f;->b(JLjava/lang/Object;)V

    goto :goto_4

    .line 764
    :cond_e
    check-cast p1, Landroid/view/ViewGroup;

    move v0, v4

    .line 765
    :goto_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 766
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/transition/y;->a(Landroid/view/View;Z)V

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v6, v4

    goto/16 :goto_0
.end method

.method private static j()Landroid/support/v4/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/f/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/y$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Landroid/support/transition/y;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/a;

    .line 126
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    .line 128
    sget-object v1, Landroid/support/transition/y;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)Landroid/support/transition/y;
    .locals 1

    .prologue
    .line 138
    iput-wide p1, p0, Landroid/support/transition/y;->e:J

    .line 139
    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/y;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Landroid/support/transition/y;->f:Landroid/animation/TimeInterpolator;

    .line 157
    return-object p0
.end method

.method public a(Landroid/support/transition/y$b;)Landroid/support/transition/y;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    .line 1056
    :cond_0
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    return-object p0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1105
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1106
    iget-wide v2, p0, Landroid/support/transition/y;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dur("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/y;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    :cond_0
    iget-wide v2, p0, Landroid/support/transition/y;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dly("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/y;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1112
    :cond_1
    iget-object v2, p0, Landroid/support/transition/y;->f:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "interp("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/y;->f:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1115
    :cond_2
    iget-object v2, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 1116
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tgts("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1117
    iget-object v2, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    move-object v2, v0

    move v0, v1

    .line 1118
    :goto_0
    iget-object v3, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1119
    if-lez v0, :cond_4

    .line 1120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1122
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v2, v0

    .line 1125
    :cond_6
    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1126
    :goto_1
    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 1127
    if-lez v1, :cond_7

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1130
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1133
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    :cond_9
    return-object v0
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 935
    if-nez p1, :cond_0

    .line 936
    invoke-virtual {p0}, Landroid/support/transition/y;->g()V

    .line 956
    :goto_0
    return-void

    .line 938
    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/y;->b()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 939
    invoke-virtual {p0}, Landroid/support/transition/y;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 941
    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/y;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 942
    invoke-virtual {p0}, Landroid/support/transition/y;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 944
    :cond_2
    invoke-virtual {p0}, Landroid/support/transition/y;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 945
    invoke-virtual {p0}, Landroid/support/transition/y;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 947
    :cond_3
    new-instance v0, Landroid/support/transition/y$2;

    invoke-direct {v0, p0}, Landroid/support/transition/y$2;-><init>(Landroid/support/transition/y;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 954
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public abstract a(Landroid/support/transition/ae;)V
.end method

.method public a(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 803
    iget-boolean v0, p0, Landroid/support/transition/y;->x:Z

    if-nez v0, :cond_3

    .line 804
    invoke-static {}, Landroid/support/transition/y;->j()Landroid/support/v4/f/a;

    move-result-object v2

    .line 805
    invoke-virtual {v2}, Landroid/support/v4/f/a;->size()I

    move-result v0

    .line 806
    invoke-static {p1}, Landroid/support/transition/ao;->a(Landroid/view/View;)Landroid/support/transition/ao;

    move-result-object v3

    .line 807
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 808
    invoke-virtual {v2, v1}, Landroid/support/v4/f/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/y$a;

    .line 809
    iget-object v4, v0, Landroid/support/transition/y$a;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/transition/y$a;->d:Landroid/support/transition/ao;

    invoke-virtual {v3, v0}, Landroid/support/transition/ao;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {v2, v1}, Landroid/support/v4/f/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 811
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 807
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 814
    :cond_1
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 815
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    .line 816
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 817
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 818
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    .line 819
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/y$b;

    invoke-interface {v1, p0}, Landroid/support/transition/y$b;->b(Landroid/support/transition/y;)V

    .line 818
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 822
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/y;->s:Z

    .line 824
    :cond_3
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    .line 866
    invoke-static {}, Landroid/support/transition/y;->j()Landroid/support/v4/f/a;

    move-result-object v5

    .line 867
    invoke-virtual {v5}, Landroid/support/v4/f/a;->size()I

    move-result v0

    .line 868
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_5

    .line 869
    invoke-virtual {v5, v4}, Landroid/support/v4/f/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 870
    if-eqz v0, :cond_2

    .line 871
    invoke-virtual {v5, v0}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/y$a;

    .line 872
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/support/transition/y$a;->a:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/support/transition/y$a;->a:Landroid/view/View;

    .line 873
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 874
    const/4 v2, 0x0

    .line 875
    iget-object v6, v1, Landroid/support/transition/y$a;->c:Landroid/support/transition/ae;

    .line 876
    iget-object v3, v1, Landroid/support/transition/y$a;->a:Landroid/view/View;

    .line 877
    iget-object v1, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v1, v1, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v1, v1, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    .line 878
    invoke-virtual {v1, v3}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/ae;

    .line 879
    :goto_1
    if-nez v1, :cond_7

    .line 880
    iget-object v1, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v1, v1, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/ae;

    move-object v3, v1

    .line 882
    :goto_2
    if-eqz v6, :cond_6

    .line 885
    if-eqz v3, :cond_6

    .line 886
    iget-object v1, v6, Landroid/support/transition/ae;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 887
    iget-object v8, v6, Landroid/support/transition/ae;->a:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 888
    iget-object v9, v3, Landroid/support/transition/ae;->a:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 889
    if-eqz v8, :cond_0

    if-eqz v1, :cond_0

    .line 890
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 891
    const/4 v1, 0x1

    .line 902
    :goto_3
    if-eqz v1, :cond_2

    .line 903
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 907
    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 868
    :cond_2
    :goto_4
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto/16 :goto_0

    .line 878
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 912
    :cond_4
    invoke-virtual {v5, v0}, Landroid/support/v4/f/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 919
    :cond_5
    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v1, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/transition/y;->a(Landroid/view/ViewGroup;Landroid/support/transition/af;Landroid/support/transition/af;)V

    .line 920
    invoke-virtual {p0}, Landroid/support/transition/y;->e()V

    .line 921
    return-void

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    move-object v3, v1

    goto :goto_2
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/support/transition/af;Landroid/support/transition/af;)V
    .locals 16
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 187
    new-instance v7, Landroid/support/v4/f/a;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-direct {v7, v2}, Landroid/support/v4/f/a;-><init>(Landroid/support/v4/f/k;)V

    .line 189
    new-instance v8, Landroid/util/SparseArray;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    .line 190
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v8, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 191
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 192
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 193
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_0
    new-instance v9, Landroid/support/v4/f/f;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    .line 196
    invoke-virtual {v2}, Landroid/support/v4/f/f;->b()I

    move-result v2

    invoke-direct {v9, v2}, Landroid/support/v4/f/f;-><init>(I)V

    .line 197
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v3}, Landroid/support/v4/f/f;->b()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 198
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v3, v2}, Landroid/support/v4/f/f;->b(I)J

    move-result-wide v4

    .line 199
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v3, v2}, Landroid/support/v4/f/f;->c(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v4, v5, v3}, Landroid/support/v4/f/f;->b(JLjava/lang/Object;)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 205
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v2}, Landroid/support/v4/f/a;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 207
    const/4 v4, 0x0

    .line 208
    const/4 v3, 0x0

    .line 209
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/ListView;

    if-eqz v5, :cond_3

    .line 210
    const/4 v3, 0x1

    .line 212
    :cond_3
    if-nez v3, :cond_8

    .line 213
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v13

    .line 214
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    .line 215
    invoke-virtual {v3, v2}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    move-object v5, v3

    .line 216
    :goto_3
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 217
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    .line 218
    invoke-virtual {v7, v2}, Landroid/support/v4/f/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_4
    :goto_4
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->remove(I)V

    .line 232
    int-to-long v14, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14, v15}, Landroid/support/transition/y;->a(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 215
    :cond_5
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    move-object v5, v3

    goto :goto_3

    .line 219
    :cond_6
    const/4 v3, -0x1

    if-eq v13, v3, :cond_1e

    .line 220
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    .line 221
    const/4 v6, 0x0

    .line 222
    invoke-virtual {v7}, Landroid/support/v4/f/a;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 223
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v15

    if-ne v15, v13, :cond_1d

    :goto_6
    move-object v6, v4

    .line 226
    goto :goto_5

    .line 227
    :cond_7
    if-eqz v6, :cond_4

    .line 228
    invoke-virtual {v7, v6}, Landroid/support/v4/f/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 237
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 238
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 239
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 240
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v14

    .line 241
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v2, v14, v15}, Landroid/support/v4/f/f;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    .line 242
    invoke-virtual {v9, v14, v15}, Landroid/support/v4/f/f;->c(J)V

    .line 244
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 249
    :cond_9
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v2}, Landroid/support/v4/f/f;->b()I

    move-result v5

    .line 250
    const/4 v2, 0x0

    move v4, v2

    :goto_7
    if-ge v4, v5, :cond_b

    .line 251
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v2, v4}, Landroid/support/v4/f/f;->b(I)J

    move-result-wide v12

    .line 252
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Landroid/support/transition/y;->a(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 253
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v2, v12, v13}, Landroid/support/v4/f/f;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    .line 254
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v3, v12, v13}, Landroid/support/v4/f/f;->a(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    .line 255
    invoke-virtual {v9, v12, v13}, Landroid/support/v4/f/f;->c(J)V

    .line 256
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_7

    .line 261
    :cond_b
    invoke-virtual {v7}, Landroid/support/v4/f/a;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 262
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    .line 263
    int-to-long v12, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Landroid/support/transition/y;->a(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 264
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    .line 265
    invoke-virtual {v3, v2}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    .line 266
    :goto_9
    invoke-virtual {v7, v2}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    .line 267
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 268
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 265
    :cond_d
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    goto :goto_9

    .line 272
    :cond_e
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 273
    const/4 v2, 0x0

    move v4, v2

    :goto_a
    if-ge v4, v5, :cond_10

    .line 274
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 275
    const/4 v2, 0x0

    int-to-long v6, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Landroid/support/transition/y;->a(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 276
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    .line 277
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    .line 278
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_f
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_a

    .line 282
    :cond_10
    invoke-virtual {v9}, Landroid/support/v4/f/f;->b()I

    move-result v5

    .line 283
    const/4 v2, 0x0

    move v4, v2

    :goto_b
    if-ge v4, v5, :cond_11

    .line 284
    invoke-virtual {v9, v4}, Landroid/support/v4/f/f;->b(I)J

    move-result-wide v6

    .line 286
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v2, v6, v7}, Landroid/support/v4/f/f;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    .line 287
    invoke-virtual {v9, v6, v7}, Landroid/support/v4/f/f;->a(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    .line 288
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_b

    .line 291
    :cond_11
    invoke-static {}, Landroid/support/transition/y;->j()Landroid/support/v4/f/a;

    move-result-object v8

    .line 292
    const/4 v2, 0x0

    move v4, v2

    :goto_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_1a

    .line 293
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    .line 294
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/ae;

    .line 296
    if-nez v2, :cond_12

    if-eqz v3, :cond_17

    .line 297
    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v2, v3}, Landroid/support/transition/ae;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 317
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/y;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;

    move-result-object v6

    .line 318
    if-eqz v6, :cond_17

    .line 321
    const/4 v5, 0x0

    .line 322
    if-eqz v3, :cond_19

    .line 323
    iget-object v7, v3, Landroid/support/transition/ae;->b:Landroid/view/View;

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/y;->a()[Ljava/lang/String;

    move-result-object v9

    .line 325
    if-eqz v7, :cond_1c

    if-eqz v9, :cond_1c

    array-length v2, v9

    if-lez v2, :cond_1c

    .line 326
    new-instance v5, Landroid/support/transition/ae;

    invoke-direct {v5}, Landroid/support/transition/ae;-><init>()V

    .line 327
    iput-object v7, v5, Landroid/support/transition/ae;->b:Landroid/view/View;

    .line 328
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v2, v7}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/ae;

    .line 329
    if-eqz v2, :cond_14

    .line 330
    const/4 v3, 0x0

    :goto_d
    array-length v12, v9

    if-ge v3, v12, :cond_14

    .line 331
    iget-object v12, v5, Landroid/support/transition/ae;->a:Ljava/util/Map;

    aget-object v13, v9, v3

    iget-object v14, v2, Landroid/support/transition/ae;->a:Ljava/util/Map;

    aget-object v15, v9, v3

    .line 332
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 331
    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 335
    :cond_14
    invoke-virtual {v8}, Landroid/support/v4/f/a;->size()I

    move-result v9

    .line 336
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v9, :cond_1b

    .line 337
    invoke-virtual {v8, v3}, Landroid/support/v4/f/a;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 338
    invoke-virtual {v8, v2}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/y$a;

    .line 339
    iget-object v12, v2, Landroid/support/transition/y$a;->c:Landroid/support/transition/ae;

    if-eqz v12, :cond_18

    iget-object v12, v2, Landroid/support/transition/y$a;->a:Landroid/view/View;

    if-ne v12, v7, :cond_18

    iget-object v12, v2, Landroid/support/transition/y$a;->b:Ljava/lang/String;

    if-nez v12, :cond_15

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/y;->i()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_16

    :cond_15
    iget-object v12, v2, Landroid/support/transition/y$a;->b:Ljava/lang/String;

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/y;->i()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 342
    :cond_16
    iget-object v2, v2, Landroid/support/transition/y$a;->c:Landroid/support/transition/ae;

    invoke-virtual {v2, v5}, Landroid/support/transition/ae;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 344
    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v5

    :goto_f
    move-object v6, v3

    move-object v3, v7

    .line 353
    :goto_10
    if-eqz v6, :cond_17

    .line 354
    new-instance v5, Landroid/support/transition/y$a;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/y;->i()Ljava/lang/String;

    move-result-object v7

    .line 355
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ao;->a(Landroid/view/View;)Landroid/support/transition/ao;

    move-result-object v9

    invoke-direct {v5, v3, v7, v9, v2}, Landroid/support/transition/y$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/ao;Landroid/support/transition/ae;)V

    .line 356
    invoke-virtual {v8, v6, v5}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/y;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_17
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_c

    .line 336
    :cond_18
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_e

    .line 351
    :cond_19
    iget-object v2, v2, Landroid/support/transition/ae;->b:Landroid/view/View;

    move-object v3, v2

    move-object v2, v5

    goto :goto_10

    .line 363
    :cond_1a
    return-void

    :cond_1b
    move-object v2, v5

    move-object v3, v6

    goto :goto_f

    :cond_1c
    move-object v2, v5

    move-object v3, v6

    goto :goto_f

    :cond_1d
    move-object v4, v6

    goto/16 :goto_6

    :cond_1e
    move-object v3, v4

    goto/16 :goto_4
.end method

.method a(Landroid/view/ViewGroup;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 607
    invoke-virtual {p0, p2}, Landroid/support/transition/y;->a(Z)V

    .line 608
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 609
    :cond_0
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v1, v2

    .line 610
    :goto_0
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 611
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 612
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 613
    if-eqz v3, :cond_1

    .line 614
    new-instance v4, Landroid/support/transition/ae;

    invoke-direct {v4}, Landroid/support/transition/ae;-><init>()V

    .line 615
    iput-object v3, v4, Landroid/support/transition/ae;->b:Landroid/view/View;

    .line 616
    if-eqz p2, :cond_2

    .line 617
    invoke-virtual {p0, v4}, Landroid/support/transition/y;->a(Landroid/support/transition/ae;)V

    .line 621
    :goto_1
    if-eqz p2, :cond_3

    .line 622
    iget-object v5, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v5, v5, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    if-ltz v0, :cond_1

    .line 624
    iget-object v3, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v3, v3, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 610
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 619
    :cond_2
    invoke-virtual {p0, v4}, Landroid/support/transition/y;->b(Landroid/support/transition/ae;)V

    goto :goto_1

    .line 627
    :cond_3
    iget-object v5, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v5, v5, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    if-ltz v0, :cond_1

    .line 629
    iget-object v3, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v3, v3, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 635
    :cond_4
    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 636
    :goto_3
    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 637
    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 638
    if-eqz v0, :cond_5

    .line 639
    new-instance v1, Landroid/support/transition/ae;

    invoke-direct {v1}, Landroid/support/transition/ae;-><init>()V

    .line 640
    iput-object v0, v1, Landroid/support/transition/ae;->b:Landroid/view/View;

    .line 641
    if-eqz p2, :cond_6

    .line 642
    invoke-virtual {p0, v1}, Landroid/support/transition/y;->a(Landroid/support/transition/ae;)V

    .line 646
    :goto_4
    if-eqz p2, :cond_7

    .line 647
    iget-object v3, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v3, v3, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 644
    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/transition/y;->b(Landroid/support/transition/ae;)V

    goto :goto_4

    .line 649
    :cond_7
    iget-object v3, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v3, v3, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 655
    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/support/transition/y;->a(Landroid/view/View;Z)V

    .line 657
    :cond_9
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 665
    if-eqz p1, :cond_0

    .line 666
    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->clear()V

    .line 667
    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 668
    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v0}, Landroid/support/v4/f/f;->c()V

    .line 674
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->a:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->clear()V

    .line 671
    iget-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 672
    iget-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v0}, Landroid/support/v4/f/f;->c()V

    goto :goto_0
.end method

.method a(Landroid/view/View;J)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Landroid/support/transition/y;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/y;->i:Ljava/util/ArrayList;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v2

    .line 379
    :cond_1
    iget-object v0, p0, Landroid/support/transition/y;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/y;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    :cond_2
    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 383
    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 384
    :goto_1
    if-ge v1, v4, :cond_3

    .line 385
    iget-object v0, p0, Landroid/support/transition/y;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 386
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 391
    :cond_3
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    move v2, v3

    .line 392
    goto :goto_0

    .line 394
    :cond_4
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v1, v2

    .line 395
    :goto_2
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 396
    iget-object v0, p0, Landroid/support/transition/y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v4, p2

    if-nez v0, :cond_5

    move v2, v3

    .line 397
    goto :goto_0

    .line 395
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 401
    :cond_6
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    .line 402
    :goto_3
    iget-object v1, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 403
    iget-object v1, p0, Landroid/support/transition/y;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_7

    move v2, v3

    .line 404
    goto/16 :goto_0

    .line 402
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Landroid/support/transition/y;->e:J

    return-wide v0
.end method

.method public b(Landroid/support/transition/y$b;)Landroid/support/transition/y;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-object p0

    .line 1064
    :cond_1
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1065
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public abstract b(Landroid/support/transition/ae;)V
.end method

.method public b(Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 835
    iget-boolean v0, p0, Landroid/support/transition/y;->s:Z

    if-eqz v0, :cond_3

    .line 836
    iget-boolean v0, p0, Landroid/support/transition/y;->x:Z

    if-nez v0, :cond_2

    .line 837
    invoke-static {}, Landroid/support/transition/y;->j()Landroid/support/v4/f/a;

    move-result-object v2

    .line 838
    invoke-virtual {v2}, Landroid/support/v4/f/a;->size()I

    move-result v0

    .line 839
    invoke-static {p1}, Landroid/support/transition/ao;->a(Landroid/view/View;)Landroid/support/transition/ao;

    move-result-object v4

    .line 840
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 841
    invoke-virtual {v2, v1}, Landroid/support/v4/f/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/y$a;

    .line 842
    iget-object v5, v0, Landroid/support/transition/y$a;->a:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroid/support/transition/y$a;->d:Landroid/support/transition/ao;

    invoke-virtual {v4, v0}, Landroid/support/transition/ao;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v2, v1}, Landroid/support/v4/f/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 844
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 840
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 847
    :cond_1
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 848
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    .line 849
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 850
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 851
    :goto_1
    if-ge v2, v4, :cond_2

    .line 852
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/y$b;

    invoke-interface {v1, p0}, Landroid/support/transition/y$b;->c(Landroid/support/transition/y;)V

    .line 851
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 856
    :cond_2
    iput-boolean v3, p0, Landroid/support/transition/y;->s:Z

    .line 858
    :cond_3
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Landroid/support/transition/y;->d:J

    return-wide v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/support/transition/y;->h()Landroid/support/transition/y;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/transition/y;->f:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method protected e()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/support/transition/y;->f()V

    .line 423
    invoke-static {}, Landroid/support/transition/y;->j()Landroid/support/v4/f/a;

    move-result-object v1

    .line 425
    iget-object v0, p0, Landroid/support/transition/y;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 429
    invoke-virtual {v1, v0}, Landroid/support/v4/f/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/support/transition/y;->f()V

    .line 431
    invoke-direct {p0, v0, v1}, Landroid/support/transition/y;->a(Landroid/animation/Animator;Landroid/support/v4/f/a;)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Landroid/support/transition/y;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 435
    invoke-virtual {p0}, Landroid/support/transition/y;->g()V

    .line 436
    return-void
.end method

.method protected f()V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 967
    iget v0, p0, Landroid/support/transition/y;->r:I

    if-nez v0, :cond_1

    .line 968
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 969
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    .line 970
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 971
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 972
    :goto_0
    if-ge v2, v4, :cond_0

    .line 973
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/y$b;

    invoke-interface {v1, p0}, Landroid/support/transition/y$b;->d(Landroid/support/transition/y;)V

    .line 972
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 976
    :cond_0
    iput-boolean v3, p0, Landroid/support/transition/y;->x:Z

    .line 978
    :cond_1
    iget v0, p0, Landroid/support/transition/y;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/y;->r:I

    .line 979
    return-void
.end method

.method protected g()V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 994
    iget v0, p0, Landroid/support/transition/y;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/transition/y;->r:I

    .line 995
    iget v0, p0, Landroid/support/transition/y;->r:I

    if-nez v0, :cond_3

    .line 996
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 997
    iget-object v0, p0, Landroid/support/transition/y;->t:Ljava/util/ArrayList;

    .line 998
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 999
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 1000
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1001
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/y$b;

    invoke-interface {v1, p0}, Landroid/support/transition/y$b;->a(Landroid/support/transition/y;)V

    .line 1000
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1004
    :goto_1
    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v0}, Landroid/support/v4/f/f;->b()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1005
    iget-object v0, p0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/f;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/ae;

    .line 1006
    iget-object v0, v0, Landroid/support/transition/ae;->b:Landroid/view/View;

    .line 1004
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1011
    :cond_1
    :goto_2
    iget-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v0}, Landroid/support/v4/f/f;->b()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1012
    iget-object v0, p0, Landroid/support/transition/y;->w:Landroid/support/transition/af;

    iget-object v0, v0, Landroid/support/transition/af;->c:Landroid/support/v4/f/f;

    invoke-virtual {v0, v2}, Landroid/support/v4/f/f;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/ae;

    .line 1013
    iget-object v0, v0, Landroid/support/transition/ae;->b:Landroid/view/View;

    .line 1011
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1018
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/y;->x:Z

    .line 1020
    :cond_3
    return-void
.end method

.method public h()Landroid/support/transition/y;
    .locals 2

    .prologue
    .line 1087
    const/4 v1, 0x0

    .line 1089
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/y;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/transition/y;->u:Ljava/util/ArrayList;

    .line 1091
    new-instance v1, Landroid/support/transition/af;

    invoke-direct {v1}, Landroid/support/transition/af;-><init>()V

    iput-object v1, v0, Landroid/support/transition/y;->c:Landroid/support/transition/af;

    .line 1092
    new-instance v1, Landroid/support/transition/af;

    invoke-direct {v1}, Landroid/support/transition/af;-><init>()V

    iput-object v1, v0, Landroid/support/transition/y;->w:Landroid/support/transition/af;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1096
    :goto_0
    return-object v0

    .line 1093
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Landroid/support/transition/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1082
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
