.class Landroid/support/transition/ac;
.super Landroid/support/transition/s;
.source "TransitionSetKitKat.java"

# interfaces
.implements Landroid/support/transition/ab;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private c:Landroid/transition/TransitionSet;


# direct methods
.method public constructor <init>(Landroid/support/transition/q;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/transition/s;-><init>()V

    .line 29
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ac;->c:Landroid/transition/TransitionSet;

    .line 30
    iget-object v0, p0, Landroid/support/transition/ac;->c:Landroid/transition/TransitionSet;

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/ac;->a(Landroid/support/transition/q;Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/transition/ac;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/transition/ac;->c:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 41
    return-object p0
.end method

.method public a(Landroid/support/transition/p;)Landroid/support/transition/ac;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/transition/ac;->c:Landroid/transition/TransitionSet;

    check-cast p1, Landroid/support/transition/s;

    iget-object v1, p1, Landroid/support/transition/s;->a:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 47
    return-object p0
.end method

.method public synthetic b(I)Landroid/support/transition/ab;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/support/transition/ac;->a(I)Landroid/support/transition/ac;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/support/transition/p;)Landroid/support/transition/ab;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/support/transition/ac;->a(Landroid/support/transition/p;)Landroid/support/transition/ac;

    move-result-object v0

    return-object v0
.end method
