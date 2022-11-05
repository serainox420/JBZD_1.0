.class Lcom/mobsandgeeks/saripaar/Validator$ValidationReport;
.super Ljava/lang/Object;
.source "Validator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValidationReport"
.end annotation


# instance fields
.field errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mobsandgeeks/saripaar/ValidationError;",
            ">;"
        }
    .end annotation
.end field

.field hasMoreErrors:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mobsandgeeks/saripaar/ValidationError;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/Validator$ValidationReport;->errors:Ljava/util/List;

    .line 934
    iput-boolean p2, p0, Lcom/mobsandgeeks/saripaar/Validator$ValidationReport;->hasMoreErrors:Z

    .line 935
    return-void
.end method
