.class Lcom/google/firebase/auth/FirebaseAuth$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbmz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/d;Z)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth$3;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbmn;Lcom/google/firebase/auth/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth$3;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmn;Z)V

    return-void
.end method
