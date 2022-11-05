.class Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;
.super Ljava/util/HashMap;
.source "PasswordRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/rule/PasswordRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobsandgeeks/saripaar/rule/PasswordRule;


# direct methods
.method constructor <init>(Lcom/mobsandgeeks/saripaar/rule/PasswordRule;)V
    .locals 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;->this$0:Lcom/mobsandgeeks/saripaar/rule/PasswordRule;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;->ANY:Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;

    const-string v1, ".+"

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;->ALPHA:Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;

    const-string v1, "\\w+"

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;->ALPHA_MIXED_CASE:Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;

    const-string v1, "(?=.*[a-z])(?=.*[A-Z]).+"

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;->NUMERIC:Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;

    const-string v1, "\\d+"

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;->ALPHA_NUMERIC:Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;

    const-string v1, "(?=.*[a-zA-Z])(?=.*[\\d]).+"

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;->ALPHA_NUMERIC_MIXED_CASE:Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;

    const-string v1, "(?=.*[a-z])(?=.*[A-Z])(?=.*[\\d]).+"

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;->ALPHA_NUMERIC_SYMBOLS:Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;

    const-string v1, "(?=.*[a-zA-Z])(?=.*[\\d])(?=.*([^\\w])).+"

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;->ALPHA_NUMERIC_MIXED_CASE_SYMBOLS:Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;

    const-string v1, "(?=.*[a-z])(?=.*[A-Z])(?=.*[\\d])(?=.*([^\\w])).+"

    invoke-virtual {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method
