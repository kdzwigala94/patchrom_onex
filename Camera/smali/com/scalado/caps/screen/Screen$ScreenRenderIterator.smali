.class Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;
.super Lcom/scalado/base/Iterator;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/screen/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenRenderIterator"
.end annotation


# instance fields
.field private commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

.field private screen:Lcom/scalado/caps/screen/Screen;

.field final synthetic this$0:Lcom/scalado/caps/screen/Screen;


# direct methods
.method constructor <init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/caps/screen/Screen;)V
    .locals 1
    .parameter
    .parameter "screen"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;->this$0:Lcom/scalado/caps/screen/Screen;

    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;->screen:Lcom/scalado/caps/screen/Screen;

    .line 137
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;->screen:Lcom/scalado/caps/screen/Screen;

    invoke-direct {p0, v0}, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;->nativeCreate(Lcom/scalado/caps/screen/Screen;)V

    .line 138
    new-instance v0, Lcom/scalado/base/Iterator$CommonIterator;

    invoke-direct {v0, p0, p0}, Lcom/scalado/base/Iterator$CommonIterator;-><init>(Lcom/scalado/base/Iterator;Lcom/scalado/base/Iterator;)V

    iput-object v0, p0, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    .line 139
    return-void
.end method

.method private native nativeCreate(Lcom/scalado/caps/screen/Screen;)V
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->abort()V

    .line 151
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->done()Z

    move-result v0

    return v0
.end method

.method public step()F
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/scalado/caps/screen/Screen$ScreenRenderIterator;->commonIterator:Lcom/scalado/base/Iterator$CommonIterator;

    invoke-virtual {v0}, Lcom/scalado/base/Iterator$CommonIterator;->step()F

    move-result v0

    return v0
.end method
