.class final Lcom/google/android/gms/internal/zzbte$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbte;->zzb(Lcom/google/firebase/database/d$a;)Lcom/google/android/gms/internal/zzbtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbte$1;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/firebase/database/c;Lcom/google/firebase/database/d;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbte$1;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/firebase/database/c;->b()Lcom/google/firebase/database/DatabaseException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbte$1;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
