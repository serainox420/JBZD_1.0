.class Landroid/support/transition/u;
.super Ljava/lang/Object;
.source "TransitionManagerPort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/u$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Landroid/support/transition/y;

.field private static e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/f/a",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/y;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/support/transition/u;->b:[Ljava/lang/String;

    .line 41
    const-string v0, "TransitionManager"

    sput-object v0, Landroid/support/transition/u;->c:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/support/transition/b;

    invoke-direct {v0}, Landroid/support/transition/b;-><init>()V

    sput-object v0, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/u;->e:Ljava/lang/ThreadLocal;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/transition/u;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static a()Landroid/support/v4/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/f/a",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/y;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Landroid/support/transition/u;->e:Ljava/lang/ThreadLocal;

    .line 119
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 120
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 121
    :cond_0
    new-instance v1, Landroid/support/v4/f/a;

    invoke-direct {v1}, Landroid/support/v4/f/a;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 123
    sget-object v1, Landroid/support/transition/u;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/a;

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/support/transition/y;)V
    .locals 2

    .prologue
    .line 173
    sget-object v0, Landroid/support/transition/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ai;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    sget-object v0, Landroid/support/transition/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    if-nez p1, :cond_0

    .line 180
    sget-object p1, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/support/transition/y;->h()Landroid/support/transition/y;

    move-result-object v0

    .line 183
    invoke-static {p0, v0}, Landroid/support/transition/u;->c(Landroid/view/ViewGroup;Landroid/support/transition/y;)V

    .line 184
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/transition/l;->a(Landroid/view/View;Landroid/support/transition/l;)V

    .line 185
    invoke-static {p0, v0}, Landroid/support/transition/u;->b(Landroid/view/ViewGroup;Landroid/support/transition/y;)V

    .line 187
    :cond_1
    return-void
.end method

.method private static b(Landroid/view/ViewGroup;Landroid/support/transition/y;)V
    .locals 2

    .prologue
    .line 130
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 131
    new-instance v0, Landroid/support/transition/u$a;

    invoke-direct {v0, p1, p0}, Landroid/support/transition/u$a;-><init>(Landroid/support/transition/y;Landroid/view/ViewGroup;)V

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 135
    :cond_0
    return-void
.end method

.method private static c(Landroid/view/ViewGroup;Landroid/support/transition/y;)V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Landroid/support/transition/u;->a()Landroid/support/v4/f/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 142
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/y;

    .line 144
    invoke-virtual {v0, p0}, Landroid/support/transition/y;->a(Landroid/view/View;)V

    goto :goto_0

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/support/transition/y;->a(Landroid/view/ViewGroup;Z)V

    .line 153
    :cond_1
    invoke-static {p0}, Landroid/support/transition/l;->a(Landroid/view/View;)Landroid/support/transition/l;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Landroid/support/transition/l;->a()V

    .line 157
    :cond_2
    return-void
.end method
