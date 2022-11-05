.class Lcom/google/firebase/auth/FirebaseAuth$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/auth/FirebaseAuth;->addAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/auth/FirebaseAuth$a;

.field final synthetic b:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth$1;->b:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth$1;->a:Lcom/google/firebase/auth/FirebaseAuth$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth$1;->a:Lcom/google/firebase/auth/FirebaseAuth$a;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth$1;->b:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-interface {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth$a;->a(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method
