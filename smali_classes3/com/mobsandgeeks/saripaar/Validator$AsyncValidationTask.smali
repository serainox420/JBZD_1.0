.class Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;
.super Landroid/os/AsyncTask;
.source "Validator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/mobsandgeeks/saripaar/Validator$ValidationReport;",
        ">;"
    }
.end annotation


# instance fields
.field private mOrderedRules:Z

.field private mReasonSuffix:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/mobsandgeeks/saripaar/Validator;


# direct methods
.method public constructor <init>(Lcom/mobsandgeeks/saripaar/Validator;Landroid/view/View;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 945
    iput-object p2, p0, Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;->mView:Landroid/view/View;

    .line 946
    iput-boolean p3, p0, Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;->mOrderedRules:Z

    .line 947
    iput-object p4, p0, Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;->mReasonSuffix:Ljava/lang/String;

    .line 948
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/mobsandgeeks/saripaar/Validator$ValidationReport;
    .locals 4

    .prologue
    .line 952
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    iget-object v1, p0, Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;->mView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;->mOrderedRules:Z

    iget-object v3, p0, Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;->mReasonSuffix:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mobsandgeeks/saripaar/Validator;->access$000(Lcom/mobsandgeeks/saripaar/Validator;Landroid/view/View;ZLjava/lang/String;)Lcom/mobsandgeeks/saripaar/Validator$ValidationReport;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 938
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;->doInBackground([Ljava/lang/Void;)Lcom/mobsandgeeks/saripaar/Validator$ValidationReport;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/mobsandgeeks/saripaar/Validator$ValidationReport;)V
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-static {v0, p1}, Lcom/mobsandgeeks/saripaar/Validator;->access$100(Lcom/mobsandgeeks/saripaar/Validator;Lcom/mobsandgeeks/saripaar/Validator$ValidationReport;)V

    .line 958
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 938
    check-cast p1, Lcom/mobsandgeeks/saripaar/Validator$ValidationReport;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Validator$AsyncValidationTask;->onPostExecute(Lcom/mobsandgeeks/saripaar/Validator$ValidationReport;)V

    return-void
.end method
