#ifndef QF_QMLWIDGETS_REPORTS_REPORTITEMBREAK_H
#define QF_QMLWIDGETS_REPORTS_REPORTITEMBREAK_H

#include "reportitem.h"

#include <qf/core/utils.h>

namespace qf {
namespace qmlwidgets {
namespace reports {

class QFQMLWIDGETS_DECL_EXPORT ReportItemBreak : public ReportItem
{
	Q_OBJECT
	Q_ENUMS(BreakType)
	Q_PROPERTY(BreakType breakType READ breakType WRITE setBreakType NOTIFY breakTypeChanged)
	//Q_PROPERTY(bool enabled READ isEnabled WRITE setEnabled NOTIFY enabledChanged)
private:
	typedef ReportItem Super;
public:
	ReportItemBreak(ReportItem *parent = nullptr);

	enum BreakType { Column, Page };

	QF_PROPERTY_IMPL2(BreakType, b, B, reakType, Column)

	//bool isBreak() {return true;} Q_DECL_OVERRIDE;

	virtual ChildSize childSize(Layout parent_layout) {
		Q_UNUSED(parent_layout);
		return ChildSize(0, Rect::UnitInvalid);
	}
	virtual PrintResult printMetaPaint(ReportItemMetaPaint *out, const Rect &bounding_rect);
private:
	bool m_breaking;
};

} // namespace reports
} // namespace qmlwidgets
} // namespace qf

#endif // QF_QMLWIDGETS_REPORTS_REPORTITEMBREAK_H
