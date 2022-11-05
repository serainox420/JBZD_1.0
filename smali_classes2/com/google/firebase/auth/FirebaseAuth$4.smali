.class Lcom/google/firebase/auth/FirebaseAuth$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbni;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/auth/d;

.field final synthetic b:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth$4;->b:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth$4;->a:Lcom/google/firebase/auth/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzVE()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth$4;->b:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/d;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth$4;->a:Lcom/google/firebase/auth/d;

    invoke-virtual {v1}, Lcom/google/firebase/auth/d;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth$4;->b:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzVC()V

    :cond_0
    return-void
.end method
