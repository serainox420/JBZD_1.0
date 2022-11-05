.class Lcom/mobsandgeeks/saripaar/Validator$1;
.super Ljava/lang/Object;
.source "Validator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobsandgeeks/saripaar/Validator;->triggerViewValidatedCallback(Lcom/mobsandgeeks/saripaar/Validator$ViewValidatedAction;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobsandgeeks/saripaar/Validator;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$viewValidatedAction:Lcom/mobsandgeeks/saripaar/Validator$ViewValidatedAction;


# direct methods
.method constructor <init>(Lcom/mobsandgeeks/saripaar/Validator;Lcom/mobsandgeeks/saripaar/Validator$ViewValidatedAction;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/Validator$1;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    iput-object p2, p0, Lcom/mobsandgeeks/saripaar/Validator$1;->val$viewValidatedAction:Lcom/mobsandgeeks/saripaar/Validator$ViewValidatedAction;

    iput-object p3, p0, Lcom/mobsandgeeks/saripaar/Validator$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Validator$1;->val$viewValidatedAction:Lcom/mobsandgeeks/saripaar/Validator$ViewValidatedAction;

    iget-object v1, p0, Lcom/mobsandgeeks/saripaar/Validator$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/mobsandgeeks/saripaar/Validator$ViewValidatedAction;->onAllRulesPassed(Landroid/view/View;)V

    .line 827
    return-void
.end method
