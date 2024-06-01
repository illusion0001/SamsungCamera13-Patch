.class public Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ProControlPanelView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;,
        Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;
    }
.end annotation


# static fields
.field private static final RESET_BUTTON_POSITION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProControlPanelView"


# instance fields
.field private final ITEM_LEFT_MARGIN_MAX:I

.field private final ITEM_LEFT_MARGIN_MIN:I

.field private mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

.field private mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

.field private mBlackAreaBottomPosition:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsCustomScrollBehaviorNeed:Z

.field private mItemDecoration:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mOrientation:I

.field private mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

.field private mProItemIdsPositionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070411

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->ITEM_LEFT_MARGIN_MIN:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070412

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->ITEM_LEFT_MARGIN_MAX:I

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOrientation:I

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->IDLE:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    .line 7
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mIsCustomScrollBehaviorNeed:Z

    .line 8
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    .line 9
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070411

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->ITEM_LEFT_MARGIN_MIN:I

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070412

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->ITEM_LEFT_MARGIN_MAX:I

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOrientation:I

    .line 16
    sget-object p2, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->IDLE:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    .line 17
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mIsCustomScrollBehaviorNeed:Z

    .line 18
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    .line 19
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070411

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->ITEM_LEFT_MARGIN_MIN:I

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070412

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->ITEM_LEFT_MARGIN_MAX:I

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOrientation:I

    .line 26
    sget-object p2, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->IDLE:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    .line 27
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mIsCustomScrollBehaviorNeed:Z

    .line 28
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    .line 29
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->lambda$startMarginAdjustAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->lambda$showWithAnimation$3(I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->lambda$scrollToHideResetButton$0()V

    return-void
.end method

.method private cancelMarginAdjustAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->lambda$scrollX$1(I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->lambda$showWithAnimation$2(I)V

    return-void
.end method

.method private enableViewHolder(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->ITEM_LEFT_MARGIN_MAX:I

    return p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->ITEM_LEFT_MARGIN_MIN:I

    return p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mBlackAreaBottomPosition:I

    return p0
.end method

.method private initView()V
    .locals 3

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/f3;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static bridge synthetic j(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mIsCustomScrollBehaviorNeed:Z

    return p0
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOrientation:I

    return p0
.end method

.method private synthetic lambda$scrollToHideResetButton$0()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;->getLeftMargin()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->ITEM_LEFT_MARGIN_MAX:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->startMarginAdjustAnimator(II)V

    return-void
.end method

.method private synthetic lambda$scrollX$1(I)V
    .locals 5

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method private synthetic lambda$showWithAnimation$2(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$showWithAnimation$3(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070410

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;->getLeftMargin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollX(II)V

    return-void
.end method

.method private synthetic lambda$startMarginAdjustAnimator$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;->setLeftMargin(I)V

    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollToCompleteVisible()V

    return-void
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollToLastItem()V

    return-void
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->startMarginAdjustAnimator(II)V

    return-void
.end method

.method private scrollToCompleteVisible()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v2, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 7
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v1, v3, :cond_0

    move v2, v0

    :cond_0
    neg-int v0, v2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollX(II)V

    :cond_1
    return-void
.end method

.method private scrollToLastItem()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollX(II)V

    :cond_0
    return-void
.end method

.method private startMarginAdjustAnimator(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->cancelMarginAdjustAnimator()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 2
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    .line 3
    new-instance p2, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/a3;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/a3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0073

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->cancelMarginAdjustAnimator()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setItemClickListener(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;)V

    return-void
.end method

.method public disableButton(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableButton proItemId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProControlPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setEnabled(IZ)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    .line 4
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->enableViewHolder(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public enableButton(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setEnabled(IZ)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    .line 3
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->enableViewHolder(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public initButtonBackground(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mBlackAreaBottomPosition:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mBlackAreaBottomPosition:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->updateButtonBackground(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$4;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onInitialize()V

    return-void
.end method

.method public isSelected(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->isSelected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOrientation:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    int-to-float v2, p1

    .line 4
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollToHideResetButton()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mIsCustomScrollBehaviorNeed:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/b3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/b3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollX(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollX(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/d3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/d3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;I)V

    int-to-long p0, p2

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)V
    .locals 2

    const-string v0, "ProControlPanelView"

    const-string v1, "adapter set"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setButtonText(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setText(ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setText(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(ILjava/lang/String;)V

    return-void
.end method

.method public setButtonText(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setText(ILjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setText(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p3}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSubText(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(ILjava/lang/String;)V

    return-void
.end method

.method public setButtonValueState(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setButtonValueState(IZ)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(IZ)V

    return-void
.end method

.method public setItemChanged(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setItemChanged(ILjava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proItemId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " text "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProControlPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public setItemChanged(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public setItemClickListener(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setItemClickListener(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;)V

    return-void
.end method

.method public setItemData(II)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proItemId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProControlPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->getFocusString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_4
    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/sec/android/app/camera/util/MakerParameter;->getExposureTime(I)J

    move-result-wide v1

    long-to-double v2, v1

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double v2, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v2, v6

    if-gtz v7, :cond_5

    const-wide v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    const-string v1, "1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    return-void

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_6
    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/sec/android/app/camera/util/MakerParameter;->getSensorSensitivity(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    return-void

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setItemProperty(IZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setSubTextSupported(IZ)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setSlideAnimationSupported(IZ)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setPresenter(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    return-void
.end method

.method public setProItemColor(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setProItemIdsPositionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    return-void
.end method

.method public setSubTextColor(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSubTextColor(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showWithAnimation(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mIsCustomScrollBehaviorNeed:Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07042d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onControlPanelAnimationStarted(I)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->getItemCount()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 7
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->ITEM_LEFT_MARGIN_MIN:I

    goto :goto_1

    .line 8
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->ITEM_LEFT_MARGIN_MAX:I

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;->setLeftMargin(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lr3/e;

    invoke-direct {v2}, Lr3/e;-><init>()V

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/e3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/e3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;I)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/c3;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/c3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;I)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public slideItemButtonText(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setTextSlideDirection(I)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->slideTextAnimation(I)V

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateButtonBackground(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mBlackAreaBottomPosition:I

    .line 2
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result p1

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mBlackAreaBottomPosition:I

    if-le p1, v0, :cond_0

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->DARK:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->LIGHT:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    if-eq v0, p1, :cond_1

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->DARK:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->onUpdateBackground(IZ)V

    :cond_1
    return-void
.end method

.method public updateResetButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onUpdateResetButtonRequested()V

    return-void
.end method
