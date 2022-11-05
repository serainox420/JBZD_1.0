.class Lcom/google/firebase/auth/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/auth/d;->sendEmailVerification()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation",
        "<",
        "Lcom/google/firebase/auth/e;",
        "Lcom/google/android/gms/tasks/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/auth/d;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/d$1;->a:Lcom/google/firebase/auth/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/e;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/e;

    iget-object v1, p0, Lcom/google/firebase/auth/d$1;->a:Lcom/google/firebase/auth/d;

    invoke-static {v1}, Lcom/google/firebase/auth/d;->zzd(Lcom/google/firebase/auth/d;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zziw(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/d$1;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
